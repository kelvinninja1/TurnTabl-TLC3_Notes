package io.turntabl;

import java.util.concurrent.CountDownLatch;

public class Main {

    private static final int threadCount_ = 5;
    protected static final CountDownLatch countDownLatch = new CountDownLatch(5);

    public static void main(String[] args) throws InterruptedException {
	// write your code here
        for (int tnum = 1 ; tnum <= threadCount_; ++tnum) {
            Runnable thread = new CountThread(tnum, countDownLatch);
            thread.run();

        }
        try {
            countDownLatch.await();
        } catch (InterruptedException ie) {
            return ;
        }
        System.out.println("Finished starting five threads");

    }
}
