FROM openjdk:11

WORKDIR /app

COPY Fibonacci.java /app/

# Compilar el código fuente
RUN javac /app/Fibonacci.java

# Ejecutar el programa
CMD ["java", "-cp", "/app", "Fibonacci"]

