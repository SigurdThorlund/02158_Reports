//Monitor implementation of Gate (skeleton)
//Mandatory assignment 3
//Course 02158 Concurrent Programming, DTU, Fall 2020

//Hans Henrik Lovengreen     Oct 30, 2020


public class MonGate extends Gate {

    boolean isOpen = false;

    public synchronized void pass() throws InterruptedException {
        while (!isOpen) {
            wait();
        }
    }

    public synchronized void open() {
        isOpen = true;
        notify();
    }

    public synchronized void close() {
        isOpen = false;
    }

}
