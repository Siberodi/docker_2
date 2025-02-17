FROM golang:latest

WORKDIR /app

COPY fibonacci.go /app/

RUN go mod init app && go mod tidy  # Manejo de módulos de Go
RUN go build -o /app/fibonacci /app/fibonacci.go

CMD ["/app/fibonacci"]

