FROM golang:latest

WORKDIR /app
COPY fibonacci.go /app/fibonacci.go

RUN go build -o /app/fibonacci /app/fibonacci.go
CMD ["/app/fibonacci"]
