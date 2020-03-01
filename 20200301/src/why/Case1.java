package why;
/**
 * 计算 0 + 1 + 2 + ... + NUMBER 和
 * 这个过程计算 COUNT 次
 *
 * 1. 单线程情况：我们之前的写法
 * 2. 多线程情况（COUNT) 个线程同时算
 */
public class Case1 {
    static final int COUNT = 10;
    static final long NUMBER = 10_0000_0000;

    static long sum() {
        long r= 0;
        for (long i = 0; i < NUMBER; i++) {
            r += i;
        }
        return r;
    }

    static void 单线程() {
        long b = System.nanoTime();
        for (int i = 0; i < COUNT; i++) {
            System.out.println(sum());
        }
        long e = System.nanoTime();

        double s = (e - b) / 1000_000_000.0;
        System.out.printf("单线程，运行时间：%f%n",s);
    }

    static class SunThread extends Thread {
        @Override
        public void run() {
            System.out.println(sum());
        }
    }

    static void 多线程() throws InterruptedException {
        long b = System.nanoTime();

        Thread[] threads = new Thread[COUNT - 1];
        for (int i = 0; i < COUNT - 1; i++) {
            threads[i] = new SunThread();
            threads[i].start();
        }
        System.out.println(sum());

        for (int i = 0; i < COUNT - 1; i++) {
            threads[i].join();
        }
        long e = System.nanoTime();

        double s = (e - b) / 1000_000_000.0;
        System.out.printf("多线程，运行时间：%f%n",s);
    }

    public static void main(String[] args) throws InterruptedException {
        //main有个线程
        单线程();
        System.out.println("==============");
        多线程();
    }
}
