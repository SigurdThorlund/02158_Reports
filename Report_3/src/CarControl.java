//Implementation of CarControl class
//Mandatory assignment 3
//Course 02158 Concurrent Programming, DTU, Fall 2020

//Hans Henrik Lovengreen     Oct 30, 2020


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
        //car = cd.newCar(no, col, startpos);
        try {
            car = cd.newCar(no, col, startpos);
            curpos = startpos;
            field.enter(no, curpos);
            cd.register(car);
            while (true) {
                if (atGate(curpos)) { 
                    mygate.pass(); 
                    car.setSpeed(chooseSpeed());
                }

                newpos = nextPos(curpos);

                if (atBarrier(curpos)) barrier.sync(no);
                
                if (atEntry(curpos)) {
                    synchronized(this) {
                        alley.enter(no);
                        inAlley = true;
                    }
                }

                System.out.println("1");

                synchronized(this) {
                    field.enter(no, newpos);
                    this.isAdvancing = true;
                }

                System.out.println("2");
                car.driveTo(newpos);

                System.out.println("3");
                synchronized(this) {
                    field.leave(curpos);
                    this.isAdvancing = false;
                    curpos = newpos;
                }

                synchronized (this) {
                    if (atExit(newpos)) {
                        alley.leave(no);
                        inAlley = false;
                    }
                }

                System.out.println("4");

                System.out.println("");
            }

        } catch (InterruptedException e) {
            System.out.println("interrupted");
            return;
        } catch (Exception e) {
            cd.println("Exception in Conductor no. " + no);
            System.err.println("Exception in Conductor no. " + no + ":" + e);
            e.printStackTrace();
        }
    }
}

public class CarControl implements CarControlI {

    CarDisplayI cd;           // Reference to GUI
    Conductor[] conductor;    // Car controllers
    Gate[] gate;              // Gates
    Field field;              // Field
    Alley alley;              // Alley
    Barrier barrier;          // Barrier
    boolean[] active = new boolean[9];

    public CarControl(CarDisplayI cd) {
        this.cd = cd;
        conductor = new Conductor[9];
        gate = new Gate[9];
        field = new Field();
        alley = new Alley();
        barrier = Barrier.create(cd);

        for (int no = 0; no < 9; no++) {
            active[no] = true;
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
    
    // Vi skal fjerne bilen med det samme
    // altså vi må ikke vente til den har kørt videre til det næste tile/felt på banen
    public synchronized void removeCar(int no) {
        if (active[no]) {

            Conductor c = conductor[no];
            c.interrupt();
            
            synchronized (c) {
                cd.deregister(c.car);
                field.leave(c.curpos);

                if(c.inAlley) {
                    c.alley.leave(c.no);
                }

                if(c.isAdvancing && c.curpos != c.newpos) {
                    field.leave(c.newpos);
                }
            }

            active[no] = false;
        }
    }
    


    // tror at denne funktion er korrekt -thw
    public synchronized void restoreCar(int no) {
        if (!active[no]) {
            // Det er ok at erstatte conductor med en ny conductor, det står inde i assignment teksten nede i bunden
            conductor[no] = new Conductor(no,cd,gate[no],field,alley,barrier);
            conductor[no].setName("Conductor-" + no);
            System.out.println("RestoreCar");
            conductor[no].start();
            active[no] = true;
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
