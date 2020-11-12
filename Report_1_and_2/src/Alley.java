//Prototype implementation of Alley class
//Mandatory assignment 2
//Course 02158 Concurrent Programming, DTU, Fall 2020

//Hans Henrik Lovengreen     Oct 2, 2020

public class Alley {

    Semaphore mutex;
    Semaphore edit;
    int counter;
    Semaphore wait;

    public Alley() {
        mutex = new Semaphore(1);
        wait = new Semaphore(1);
        edit = new Semaphore(1);
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
        if (no < 5) {
            //Alley direction down
            wait.P(); //In case there is another car waiting, driving in the same direction
            edit.P(); //Get permission to edit counter
            if(counter < 0) {
                //There is already traffic in the same direction
                counter--;
                wait.V();
            }
            else {
                edit.V();
                mutex.P(); //Request alley entry permission
                wait.V(); //Release blocker for parallel track
                edit.P();
                counter--;
            }

        }
        else {
            //Alley direction up
            edit.P();
            if (counter > 0) {
                counter++;
            }
            else {
                edit.V();
                mutex.P();
                edit.P();
                counter++;
            }
        }
        edit.V(); //Done editing
    }

    /* Register that car no. has left the alley */
    public void leave(int no) {
        try {
            edit.P(); //Request edit permission
            if(no < 5) {
                counter++;
            }
            else {
                counter--;
            }
            if (counter == 0) mutex.V(); //If counter is zero, reopen alley for both directions
            edit.V();
        } catch(InterruptedException e) {
            System.out.println("P() operation interrupted, in leave("+no+")!");
        }
    }
}
