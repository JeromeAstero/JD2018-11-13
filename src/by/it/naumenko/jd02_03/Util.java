package by.it.naumenko.jd02_03;

public class Util {
    static final int kSpeed = 100;


    static int random(int min, int max) {
//        return max + (int) (Math.random() * min - min + 1);
       return min + (int) (Math.random() * (max - min + 1));
    }

    static int random(int max) {
        return random(0, max);
    }

    static void sleep(int millis) {
        try {
            Thread.sleep(millis/kSpeed);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

}
