//Prototype implementation of Field class
//Mandatory assignment 2
//Course 02158 Concurrent Programming, DTU, Fall 2020

//Hans Henrik Lovengreen     Oct 2, 2020

public class Field {

    Semaphore[][] semaphores = new Semaphore[11][12];

    public Field() {
        for (int i = 0; i < semaphores.length; i ++) {
            for (int j = 0; j < semaphores[i].length; j++) semaphores[i][j] = new Semaphore(1);
        }
    }

    /* Block until car no. may safely enter tile at pos */
    public void enter(int no, Pos pos) throws InterruptedException {
        semaphores[pos.row][pos.col].P();
    }

    /* Release tile at position pos */
    public void leave(Pos pos) {
        semaphores[pos.row][pos.col].V();
    }

}
