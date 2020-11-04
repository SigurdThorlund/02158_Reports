//Prototype implementation of Alley class
//Mandatory assignment 2
//Course 02158 Concurrent Programming, DTU, Fall 2020

//Hans Henrik Lovengreen     Oct 2, 2020

public class Alley {

    Semaphore mutex;
    Semaphore mutexCC;
    int counter;
    int counterCC;

    public Alley() {
        mutex = new Semaphore(1);
        mutexCC = new Semaphore(1);
        counter = 0;
        counterCC = 0;
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
        // Counterclockwise car entering alley with car in same direction
        if (no < 5 && counter < 0) {
            counterCC--;
            counter--;
        // Clockwise car entering alley with car in same direction
        } else if (no >= 5 && counter > 0) {
            counter++;
        // Clockwise car entering alley with no car or car in opposite direction
        } else if (no >= 5) {
            mutex.P();
            counter++;
        // Counterclockwise car entering alley with no car or car in opposite direction
        } else if (no < 5) {
            mutexCC.P();
            if (counterCC == 0) {
                counterCC--;
                mutex.P();
            } else {
                counterCC--;
            }
            mutexCC.V();
            counter--;
        }
    }

    /* Register that car no. has left the alley */
    public void leave(int no) {
        if (no < 5) {
            counter++;
            counterCC++;
        } else if (no >= 5) {
            counter--;
        }

        if (counter == 0) {
            mutex.V();
        }
    }
}