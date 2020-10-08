//Prototype implementation of Alley class
//Mandatory assignment 2
//Course 02158 Concurrent Programming, DTU, Fall 2020

//Hans Henrik Lovengreen     Oct 2, 2020

public class Alley {

    Semaphore mutex;

    public Alley() {
        mutex = new Semaphore(1);
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
        mutex.P();
    }

    /* Register that car no. has left the alley */
    public void leave(int no) {
        mutex.V();
    }

}
