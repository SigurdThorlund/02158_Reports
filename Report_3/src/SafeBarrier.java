//Naive implementation of Barrier class
//Mandatory assignment 3
//Course 02158 Concurrent Programming, DTU, Fall 2020

//Hans Henrik Lovengreen     Oct 30, 2020

import java.lang.reflect.Array;
import java.util.Arrays;

class SafeBarrier extends Barrier {

    boolean active = false;
    int arrived;
    int driving;

    public SafeBarrier(CarDisplayI cd) {
        super(cd);
    }

    @Override
    public synchronized void sync(int no) throws InterruptedException {

        if (!active) return;

        arrived++;

        System.out.println("Arrived, Car no: " + no + ", Num: " + arrived);

        //First barrier
        while (arrived < 9) wait();

        notifyAll();

        wait();

        arrived = 0;

        notifyAll();
    }

    @Override
    public synchronized void on() {
        active = true;
    }

    @Override
    public synchronized void off() {
        active = false;
        arrived = 0;
        notifyAll();
    }


    @Override
    // May be (ab)used for robustness testing
    public void set(int k) {
        synchronized (this) {
            notify();
        }
    }


}
