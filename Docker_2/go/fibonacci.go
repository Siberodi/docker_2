package main

import (
    "fmt"
    "time"
)

func fibonacci(n int) int {
    a, b := 0, 1
    for i := 0; i < n; i++ {
        a, b = b, a+b
    }
    return a
}

func main() {
    start := time.Now()
    result := fibonacci(10000) // Variable `result` ahora es usada
    elapsed := time.Since(start)

    fmt.Println(elapsed.Milliseconds()) // Muestra el tiempo en ms
    _ = result // Se usa `result` para evitar error de variable no utilizada
}
