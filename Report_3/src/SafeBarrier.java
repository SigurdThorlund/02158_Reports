//Naive implementation of Barrier class
//Mandatory assignment 3
//Course 02158 Concurrent Programming, DTU, Fall 2020

//Hans Henrik Lovengreen     Oct 30, 2020

import java.lang.reflect.Array;
import java.util.Arrays;

class SafeBarrier extends Barrier {

    boolean active = false;
    int arrived;

    boolean carArrived[] = new boolean[9];

    public SafeBarrier(CarDisplayI cd) {
        super(cd);
    }

    @Override
    public synchronized void sync(int no) throws InterruptedException {

        if (!active) return;

        arrived++;
        carArrived[no] = true;

        if (arrived == 9) {
            for (int i=0; i<9; i++) carArrived[i] = false;
            arrived = 0;
            notifyAll();
        }
        
        //First barrier: The first car leaving will reset the driving variable.
        while (carArrived[no]) {
            wait();
        }

        carArrived[no] = false;
    }

    @Override
    public synchronized void on() {
        active = true;
    }

    @Override
    public synchronized void off() {
        active = false;
        arrived = 0;
        for (int i=0; i<9; i++) carArrived[i] = false;
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
