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

        System.out.println("Car: " + no + ", arrived: " + arrived);
        while (arrived < 9) wait();

        //if (driving == 0) System.out.println("car no: " + no);

        driving ++;

        //First car driving out will notify the others. Then it will wait until all cars have left.
        if (driving == 1) {
            notifyAll();
            while (driving != 0) {
                wait();
            }
        } else if (driving == 9) {
            arrived = 0;
            driving = 0;
            notify();
        }
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
