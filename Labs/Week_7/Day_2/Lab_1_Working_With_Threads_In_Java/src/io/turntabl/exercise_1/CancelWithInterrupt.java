package io.turntabl.exercise_1;
import java.util.concurrent.TimeUnit;

import static java.lang.Thread.interrupted;

public class CancelWithInterrupt extends HelloThread {
    //Cancel With Interrupt
    public static void main(String[] args) {
        Thread hello = new Thread(() -> {

            while (!Thread.currentThread().isInterrupted()) {
                System.out.println("Hello");
                try {
                    Thread.sleep(1000);
                } catch (InterruptedException ignore){
                    Thread.interrupted();
                }
            }

        });
        hello.start();
        try {
            Thread.sleep(5000);
        } catch (InterruptedException ignore) {
            ignore.printStackTrace();
        }
        hello.interrupt();
        System.out.println("Called Interrupted Wae");
    }
}
