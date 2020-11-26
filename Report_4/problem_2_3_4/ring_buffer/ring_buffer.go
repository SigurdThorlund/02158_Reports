package ring_buffer

import(
	"sync"
	"sync/atomic"
)

type ring_buffer struct {
	capacity      int
	size          int32
	onDroppedItem func(item interface{})
	items         chan interface{}
	stopCh        chan struct{}
	stopWG        sync.WaitGroup
	stopped       int32
	release 	  *sync.Cond
}

func NewRingBuffer(capacity int, onDroppedItem func(item interface{})) *ring_buffer {
	q := &ring_buffer{
		capacity:      capacity,
		onDroppedItem: onDroppedItem,
		items:         make(chan interface{}, capacity),
		stopCh:        make(chan struct{}),
	}
	q.release =        sync.NewCond(&sync.Mutex{})
	return q
}

func (q *ring_buffer) StartConsumers(num int, consumer func(item interface{})) {
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
func (q *ring_buffer) Produce(item interface{}) bool {
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
			return true
		default:
			<-q.items
			q.items <- item
			return true
	}
}

// Stop stops all consumers, as well as the length reporter if started,
// and releases the items channel. It blocks until all consumers have stopped.
func (q *ring_buffer) Stop() {
	atomic.StoreInt32(&q.stopped, 1) // disable producer
	close(q.stopCh)
	q.stopWG.Wait()
	close(q.items)
}

// Size returns the current size of the queue
func (q *ring_buffer) Size() int {
	return int(atomic.LoadInt32(&q.size))
}

// Capacity returns capacity of the queue
func (q *ring_buffer) Capacity() int {
	return q.capacity
}