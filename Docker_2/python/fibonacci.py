import time

def fibonacci(n):
    a, b = 0, 1
    for _ in range(n):
        a, b = b, a + b
    return a

start_time = time.time()
result = fibonacci(10000)
end_time = time.time()

elapsed_time = (end_time - start_time) * 1000  # ms
print(elapsed_time)
