//Prototype implementation of Alley class
//Mandatory assignment 2
//Course 02158 Concurrent Programming, DTU, Fall 2020

//Hans Henrik Lovengreen     Oct 2, 2020

public class Alley {

    Semaphore mutex;
    int counter;
    Semaphore counterMutex;

    public Alley() {
        mutex = new Semaphore(1);
        counterMutex = new Semaphore(1);
        counter = 0;
    }

    /* Determine whether pos is right before alley is entered */
    public boolean atEntry(Pos pos) {
        if (pos.col == 1) {
            return pos.row == 1 || pos.row == 2;
        } else if (pos.col == 0) {
            return pos.row == 10;
        }
        return false;
    }

    /* Determine whether pos is right after alley is left */
    public boolean atExit(Pos pos) {
        if (pos.col == 0) return pos.row == 0;
        else if (pos.col == 1) return pos.row == 9;
        return false;
    }

    /* Block until car no. may enter alley */
    public void enter(int no) throws InterruptedException {
        while(true) {
            counterMutex.P(); //Obtain permission to access counter
            if (no < 5) {
                if (counter <= 0) { //If true, the alley may be entered
                    mutex.P(); //Entry
                    counter--; //Adjust traffic state
                    mutex.V(); //Release mutex for the next car
                    break;
                }
            }
            else {
                if (counter >= 0) { //Same as above but inverse conditions and modification
                    mutex.P();
                    counter++;
                    mutex.V();
                    break;
                }
            }
            counterMutex.V(); //Release access to counter
        }
        counterMutex.V(); //In case of alley entry release access to counter
    }

    /* Register that car no. has left the alley */
    public void leave(int no) {
        try {
            counterMutex.P();
            if(no < 5) {
                counter++;
            } else {
                counter--;
            }
            System.out.println("Counter after exit: " + counter);

            counterMutex.V();


        } catch(InterruptedException e) {
            System.out.println("counterMutex.P() was interrupted!");
        }
    }
}
