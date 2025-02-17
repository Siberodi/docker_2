package main

import (
    "fmt"
    "time"
)

func fibonacci(n int) uint64 {
    var a, b uint64 = 0, 1
    for i := 0; i < n; i++ {
        a, b = b, a+b
    }
    return a
}

func main() {
    start := time.Now()
    result := fibonacci(10000) // Se usa uint64 para evitar overflow
    elapsed := time.Since(start)

    fmt.Println(elapsed.Milliseconds()) // Imprime el tiempo en milisegundos
    _ = result // Se usa `result` para evitar warnings
}

