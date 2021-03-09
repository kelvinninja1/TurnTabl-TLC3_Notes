package io.turntabl;

public class Main {

    private static final int threadCount_ = 5;

    public static void main(String[] args) {
	// write your code here
        for (int tnum = 1 ; tnum <= threadCount_; ++tnum) {
            Runnable thread = new CountThread(tnum);
            thread.run();
        }
        System.out.println("Finished starting five threads");

    }
}
