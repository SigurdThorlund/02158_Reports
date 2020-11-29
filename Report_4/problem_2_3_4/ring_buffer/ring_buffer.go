package ring_buffer

import(
	"sync"
	"sync/atomic"
)

type RingBuffer struct {
	capacity      int
	size          int32
	onDroppedItem func(item interface{})
	items         chan interface{}
	stopCh        chan struct{}
	stopWG        sync.WaitGroup
	stopped       int32
	release 	  *sync.Cond
}

func NewRingBuffer(capacity int, onDroppedItem func(item interface{})) *RingBuffer {
	q := &RingBuffer{
		capacity:      capacity,
		onDroppedItem: onDroppedItem,
		items:         make(chan interface{}, capacity),
		stopCh:        make(chan struct{}),
	}
	q.release =        sync.NewCond(&sync.Mutex{})
	return q
}

func (q *RingBuffer) StartConsumers(num int, consumer func(item interface{})) {
	var startWG sync.WaitGroup
	for i := 0; i < num; i++ {
		q.stopWG.Add(1)
		startWG.Add(1)
		go func() {
			startWG.Done()
			defer q.stopWG.Done()
			defer q.release.L.Unlock()
			for {
				q.release.L.Lock()
				select {
				case item := <-q.items:
					if !ok {
						return
					}
					atomic.AddInt32(&q.size, -1)
					consumer(item)
				case <-q.stopCh:
					return
				default:
				}
				q.release.Broadcast()
				q.release.L.Unlock()
			}
		}()
	}
	startWG.Wait()
}

// Produce is used by the producer to submit new item to the queue. Returns false in case of queue overflow.
func (q *RingBuffer) Produce(item interface{}) bool {
	if atomic.LoadInt32(&q.stopped) != 0 {
		q.onDroppedItem(item)
		return false
	}

	defer q.release.L.Unlock()
	defer q.release.Broadcast()
	q.release.L.Lock()
	select {
		case q.items <- item:
			atomic.AddInt32(&q.size, 1)
			q.release.L.Unlock()
			q.release.Broadcast()
			return true
		default:
			dropped <- q.items
			q.items <- item
			q.release.L.Unlock()
			q.release.Broadcast()

			if q.onDroppedItem != nil {
				q.onDroppedItem(dropped)
			}
			return true
	}
}

// Stop stops all consumers, as well as the length reporter if started,
// and releases the items channel. It blocks until all consumers have stopped.
func (q *RingBuffer) Stop() {
	atomic.StoreInt32(&q.stopped, 1) // disable producer
	close(q.stopCh)
	q.stopWG.Wait()
	close(q.items)
}

// Size returns the current size of the queue
func (q *RingBuffer) Size() int {
	defer q.release.L.Unlock()
	defer q.release.Broadcast()
	q.release.L.Lock()
	return int(atomic.LoadInt32(&q.size))
}

// Capacity returns capacity of the queue
func (q *RingBuffer) Capacity() int {
	return q.capacity
}