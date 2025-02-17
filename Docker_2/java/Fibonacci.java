package java;

public class Fibonacci {
    public static void main(String[] args) {
        long start = System.currentTimeMillis();
        long result = fibonacci(10000); // Se usa la variable para evitar warnings
        long elapsed = System.currentTimeMillis() - start;

        System.out.println(elapsed); // Solo imprime el tiempo en milisegundos
    }

    public static long fibonacci(int n) {
        long a = 0, b = 1;
        for (int i = 0; i < n; i++) {
            long temp = a;
            a = b;
            b = temp + b;
        }
        return a;
    }
}
