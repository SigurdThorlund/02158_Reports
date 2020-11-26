/*
    DTU 02158 Concurrent Programming
    Mandatory Assignment 4
    Fall 2020
*/  

package main

import (
    "fmt"
    "queue"
)

func main() {
    size := 2
    q := queue.NewBoundedQueue(size, func(item interface{}) { fmt.Println(item) })

    q.Produce("A")
    q.Produce("B")
    q.Produce("C")
    q.Produce("D")

    q.Stop()

}
