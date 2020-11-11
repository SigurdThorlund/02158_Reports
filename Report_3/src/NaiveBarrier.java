//Naive implementation of Barrier class
//Mandatory assignment 3
//Course 02158 Concurrent Programming, DTU, Fall 2020

//Hans Henrik Lovengreen     Oct 30, 2020

class NaiveBarrier extends Barrier {
    
    int arrived = 0;
    boolean active = false;
   
    public NaiveBarrier(CarDisplayI cd) {
        super(cd);
    }

    @Override
    public synchronized void sync(int no) throws InterruptedException {

        if (!active) return;

        arrived++;

        if (arrived < 9) {
            //Thread.sleep(3000);
            wait();
        } else {
            arrived = 0;
            notifyAll();
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
