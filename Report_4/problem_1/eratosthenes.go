/*
    DTU 02158 Concurrent Programming
    Mandatory Assignment 4
    Fall 2020
*/  

package main

import "fmt"

const N = 15

func odds(out chan<- int) {
    // For loop runs forever (break condition needed?)
    for i := 3; i<5*N; i += 2 {
        out<- i
    }
    fmt.Println(2)
    close(out)
}

func sieve(in <-chan int, out chan<- int) {
    // First candidate received is considered
    // this goroutines prime (should 'ok' be tested before entering forloop?)
    prime := <-in
    for {
        // Get the newest prime candidate
        cand := <-in

        if cand == 0 {
            break
        }

        // If it is not a multiple of goroutines own prime,
        // send it to the out channel
        if cand % prime != 0 {
            out<- cand
        }
    }
    fmt.Println(prime)
    close(out)
}

func main() {
    // Declare channels
    var chans [N]chan int
    // Initialize channels
    for i := 0; i<N; i++ {
        chans[i] = make(chan int)
    }

    fmt.Println("The first", N, "prime numbers are:");

    // Connect/start goroutines
    go odds(chans[0])
    for i := 1; i<N; i++ {
        go sieve(chans[i-1], chans[i])
    }
    // Await termination
    for {
        gobble :=  <-chans[N-1]
        if gobble == 0 {
            break
        }
    }

    fmt.Println("Done!")
}
