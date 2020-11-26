//Demo program for the ring buffer

package main

import (
    "fmt"
    "ring_buffer"
)

func main() {
    fmt.Println("The buffer size is 3:")
    q := ring_buffer.NewRingBuffer(3, nil)

    fmt.Println("Enqueue 6 items A through F in alphabetic order.\nThe queues expected output should be: \nD, E & F in any given order\n\nOutput:\n")
    q.Produce("A")
    q.Produce("B")
    q.Produce("C")
    q.Produce("D")
    q.Produce("E")
    q.Produce("F")
    q.StartConsumers(3, func(item interface{}) { fmt.Println(item) } )
    for; q.Size() > 0; {
    }
    q.Stop()
}
