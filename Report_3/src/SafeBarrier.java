//Naive implementation of Barrier class
//Mandatory assignment 3
//Course 02158 Concurrent Programming, DTU, Fall 2020

//Hans Henrik Lovengreen     Oct 30, 2020

import java.lang.reflect.Array;
import java.util.Arrays;

class SafeBarrier extends Barrier {

    boolean active = false;
    int[] arrived_cars = new int[9];

    public SafeBarrier(CarDisplayI cd) {
        super(cd);
    }

    @Override
    public synchronized void sync(int no) throws InterruptedException {

        if (!active) return;

        arrived_cars[no]++;

        System.out.println("Car: " + no + ", val: " + arrived_cars[no]);
        while (!all_arrived()) wait();

        notifyAll();
        arrived_cars[no]--;
    }

    private synchronized boolean all_arrived() {
        int sum = 0;
        for (int i:arrived_cars) {
            sum = sum + i;
        }
        return sum == 9;
    }

    @Override
    public synchronized void on() {
        active = true;
    }

    @Override
    public synchronized void off() {
        active = false;
        arrived_cars = new int[9];
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
