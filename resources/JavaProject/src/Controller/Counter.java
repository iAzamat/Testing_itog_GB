package Controller;

public class Counter implements AutoCloseable {

    static int count;

    static {
        count = 0;
    }

    public void add() {
        count++;
    }

    @Override
    public void close() {
        System.out.println("Counter closed. Counter value: "+count);
    }
}