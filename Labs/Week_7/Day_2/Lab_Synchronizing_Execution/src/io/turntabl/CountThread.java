package io.turntabl;

public class CountThread implements Runnable {
    protected int count;
    public CountThread(int count) {
        this.count = count;
    }
    @Override
    public void run() {
        try {
            Thread.currentThread().sleep( count * 1000);
            System.out.println("Finished thread " + count);
        } catch (InterruptedException ie) { return;}
    }
}
