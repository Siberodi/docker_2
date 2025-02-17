FROM openjdk:11

WORKDIR /app
COPY Fibonacci.java /app/Fibonacci.java

RUN javac /app/Fibonacci.java
CMD ["java", "-cp", "/app", "Fibonacci"]
