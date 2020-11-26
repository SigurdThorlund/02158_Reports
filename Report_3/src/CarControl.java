//Implementation of CarControl class
//Mandatory assignment 3
//Course 02158 Concurrent Programming, DTU, Fall 2020

//Hans Henrik Lovengreen     Oct 30, 2020
import java.util.concurrent.TimeUnit ;

import java.awt.Color;

class Conductor extends Thread {

    double basespeed = 7.0;          // Tiles per second
    double variation =  40;          // Percentage of base speed

    CarDisplayI cd;                  // GUI part
    
    Field field;                     // Field control
    Alley alley;                     // Alley control    
    Barrier barrier;                 // Barrier control    

    int no;                          // Car number
    Pos startpos;                    // Start position (provided by GUI)
    Pos barpos;                      // Barrier position (provided by GUI)
    Color col;                       // Car  color
    Gate mygate;                     // Gate at start position

    Pos curpos;                      // Current position 
    Pos newpos;                      // New position to go to

    boolean isAdvancing;
    boolean inAlley;

    CarI car;
    public Conductor(int no, CarDisplayI cd, Gate g, Field field, Alley alley, Barrier barrier) {

        this.no = no;
        this.cd = cd;
        this.field = field;
        this.alley = alley;
        this.barrier = barrier;
        this.isAdvancing = false;
        mygate = g;
        startpos = cd.getStartPos(no);
        curpos = startpos;
        newpos = startpos;
        barpos   = cd.getBarrierPos(no);  // For later use
        col = chooseColor();
        car = cd.newCar(no, col, startpos);


        cd.register(car);

        // special settings for car no. 0
        if (no==0) {
            basespeed = -1.0;  
            variation = 0; 
        }
    }

    public synchronized void setSpeed(double speed) { 
        basespeed = speed;
    }

    public synchronized void setVariation(int var) { 
        if (no != 0 && 0 <= var && var <= 100) {
            variation = var;
        }
        else
            cd.println("Illegal variation settings");
    }

    synchronized double chooseSpeed() { 
        double factor = (1.0D+(Math.random()-0.5D)*2*variation/100);
        return factor*basespeed;
    }

    Color chooseColor() { 
        return Color.blue; // You can get any color, as longs as it's blue 
    }

    Pos nextPos(Pos pos) {
        // Get my track from display
        return cd.nextPos(no,pos);
    }

    boolean atGate(Pos pos) {
        return pos.equals(startpos);
    }

    boolean atEntry(Pos pos) {
        return (pos.row ==  1 && pos.col ==  3) || (pos.row ==  2 && pos.col ==  1) || 
               (pos.row == 10 && pos.col ==  0);
    }

    boolean atExit(Pos pos) {
        return (pos.row ==  0 && pos.col ==  2) || (pos.row ==  9 && pos.col ==  1);
    }
    
    boolean atBarrier(Pos pos) {
        return pos.equals(barpos);
    }

    //Car removal helper function
    boolean inAlley(Pos pos) {
        return (pos.col == 0) || (pos.row == 1 && pos.col < 4) || (pos.row == 2 && pos.col == 1) ||
               (pos.row == 0 && pos.col < 3) || (pos.row == 9 && pos.col < 2);
    }

    public void run() {
        try {
            curpos = startpos;
            field.enter(no, curpos);
            while (true) {
                // periodically check if thread has been interrupted
                if (isInterrupted()) {
                    takeOutOfService();
                    return;
                }

                if (atGate(curpos)) { 
                    mygate.pass(); 
                    car.setSpeed(chooseSpeed());
                }

                newpos = nextPos(curpos);
                if (atBarrier(curpos)) barrier.sync(no);
                if (atEntry(curpos)) {
                    alley.enter(no);
                    inAlley = true;
                }

                field.enter(no, newpos);
                this.isAdvancing = true;
                
                car.driveTo(newpos);
                
                field.leave(curpos);
                this.isAdvancing = false;
                curpos = newpos;

                if (atExit(newpos)) {
                    alley.leave(no);
                    inAlley = false;
                }
            }
        } catch (InterruptedException e) {
            takeOutOfService();
        } catch (Exception e) {
            cd.println("Exception in Conductor no. " + no);
            System.err.println("Exception in Conductor no. " + no + ":" + e);
            e.printStackTrace();
        }
    }

    public void takeOutOfService() {
        if (isAdvancing) {
            field.leave(newpos);
        }

        if (inAlley) {
            alley.leave(no);
        }
        field.leave(curpos);
    }
}

public class CarControl implements CarControlI{

    CarDisplayI cd;           // Reference to GUI
    Conductor[] conductor;    // Car controllers
    Gate[] gate;              // Gates
    Field field;              // Field
    Alley alley;              // Alley
    Barrier barrier;          // Barrier
    boolean terminating[];

    public CarControl(CarDisplayI cd) {
        this.cd = cd;
        conductor = new Conductor[9];
        gate = new Gate[9];
        field = new Field();
        alley = new Alley();
        barrier = Barrier.create(cd);
        terminating = new boolean[9];

        for (int no = 0; no < 9; no++) {
            gate[no] = Gate.create();
            conductor[no] = new Conductor(no,cd,gate[no],field,alley,barrier);
            conductor[no].setName("Conductor-" + no);
            conductor[no].start();
        } 
    }

    public void startCar(int no) {
        gate[no].open();
    }

    public void stopCar(int no) {
        gate[no].close();
    }
    public void barrierOn() { 
        barrier.on();
    }

    public void barrierOff() {
        barrier.off();
    }

   public void barrierSet(int k) {
        barrier.set(k);
    }

    public synchronized void removeCar(int no) {
        Conductor c = conductor[no];
        if (c.isAlive()) {  
            c.interrupt();
            cd.deregister(c.car);
            terminating[no] = true;
        }
    }

    public synchronized void restoreCar(int no) {
        Conductor c = conductor[no];

        if (terminating[no]) {
            try {
                c.join();
            } catch (InterruptedException e) {}
        }

        if (!c.isAlive()) {
            c = new Conductor(no,cd,gate[no],field,alley,barrier);
            conductor[no] = c;
            c.setName("Conductor-" + no);
            c.start();
            terminating[no] = false;
        }
    }

    /* Speed settings for testing purposes */

    public void setSpeed(int no, double speed) { 
        conductor[no].setSpeed(speed);
    }

    public void setVariation(int no, int var) { 
        conductor[no].setVariation(var);
    }

}






