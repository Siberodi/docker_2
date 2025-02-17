using System;
using System.Diagnostics;

class Program {
    static void Main() {
        Stopwatch sw = Stopwatch.StartNew();
        ulong result = Fibonacci(10000); // Se usa la variable para evitar warnings
        sw.Stop();

        Console.WriteLine(sw.ElapsedMilliseconds); // Solo imprime el tiempo en milisegundos
    }

    static ulong Fibonacci(int n) {
        ulong a = 0, b = 1;
        for (int i = 0; i < n; i++) {
            ulong temp = a;
            a = b;
            b = temp + b;
        }
        return a;
    }
}
