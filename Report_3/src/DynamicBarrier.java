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
    int aThreshold = 9;
    int dThreshold = aThreshold;
    int nextThreshold = aThreshold;

    public DynamicBarrier(CarDisplayI cd) {
        super(cd);
    }

    @Override
    public synchronized void sync(int no) throws InterruptedException {

        if (!active) return;

        arrived++;
        //First barrier: The first car leaving will reset the driving variable.
        while (arrived < aThreshold ) wait();
        
        if (!active) return;
        
        if (driving >= dThreshold) {
            driving = 0;
            dThreshold = nextThreshold;
        }
        //First car out notifies the rest and then goes to wait until all cars have reached the second barrier.
        notifyAll();

        driving ++;
        //Second barrier: When last car arrives to the second barrier then we can reset the cars arrived.
        while (driving < dThreshold) {
            wait();
        }

        if (arrived >= aThreshold) {
            arrived = 0;
            aThreshold = nextThreshold;
        }
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
        driving = 0;
        aThreshold = nextThreshold;
        dThreshold = nextThreshold;
        notifyAll();
    }


    @Override
    // May be (ab)used for robustness testing
    public void set(int k) {
        nextThreshold = k;
        synchronized(this) {
            boolean thresholdChanged = false;
            if(k <= aThreshold) {
                //With a smaller threshold the cars must be released earlier
                aThreshold = nextThreshold;
                thresholdChanged = true;
            }
            if (k <= dThreshold) {
                dThreshold = nextThreshold;
                thresholdChanged = true;
            }
            if(thresholdChanged) notifyAll();
            try {
                while (aThreshold != nextThreshold || dThreshold != nextThreshold) {
                    wait();
                }
            } catch(InterruptedException e) {
                System.out.println("Waiting for thresholds to update was interrupted!");
            }
        }
    }
}
