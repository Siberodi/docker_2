function fibonacci(n) {
    let a = 0, b = 1;
    for (let i = 0; i < n; i++) {
        [a, b] = [b, a + b];
    }
    return a;
}

const start = Date.now();
const result = fibonacci(10000);
const end = Date.now();

console.log(end - start);
