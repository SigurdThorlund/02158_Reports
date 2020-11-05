//Naive implementation of Barrier class
//Mandatory assignment 3
//Course 02158 Concurrent Programming, DTU, Fall 2020

//Hans Henrik Lovengreen     Oct 30, 2020

import java.lang.reflect.Array;
import java.util.Arrays;

class DynamicBarrier extends Barrier {

    boolean active = false;
    int arrived;
    boolean lastOut;
    int driving;

    public DynamicBarrier(CarDisplayI cd) {
        super(cd);
    }

    @Override
    public synchronized void sync(int no) throws InterruptedException {

        if (!active) return;

        arrived++;

        //First barrier: The first car leaving will reset the driving variable.
        while (arrived < 9) wait();

        if (driving == 9) driving = 0;

        //First car out notifies the rest and then goes to wait until all cars have reached the second barrier.
        notifyAll();

        driving ++;

        //Second barrier: When last car arrives to the second barrier then we can reset the cars arrived.
        while (driving < 9) {
            wait();
        }

        if (arrived == 9) arrived = 0;

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
