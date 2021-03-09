package io.turntabl;

import java.util.concurrent.CountDownLatch;

public class CountThread implements Runnable {
    protected int count;
    protected CountDownLatch countDownLatch;

    public CountThread(int count, CountDownLatch countDownLatch) {
        this.count = count;
        this.countDownLatch = countDownLatch;
    }
    @Override
    public void run() {
        try {
            Thread.currentThread().sleep( count * 1000);
            System.out.println("Finished thread " + count);
            countDownLatch.countDown();
        } catch (InterruptedException ie) { return;}
    }
}
