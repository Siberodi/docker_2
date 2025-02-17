package java;

public class Fibonacci {
    public static long fibonacci(int n) {
        long a = 0, b = 1;
        for (int i = 0; i < n; i++) {
            long temp = a;
            a = b;
            b = temp + b;
        }
        return a;
    }

    public static void main(String[] args) {
        long start = System.nanoTime();
        long result = fibonacci(10000);
        long end = System.nanoTime();

        System.out.println((end - start) / 1_000_000); // Convert to ms
    }
}
