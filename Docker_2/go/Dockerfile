FROM golang:latest

WORKDIR /app

COPY fibonacci.go /app/

# Inicializa el módulo de Go (necesario para go build)
RUN go mod init app && go mod tidy 

# Compila el programa en Go
RUN go build -o /app/fibonacci /app/fibonacci.go

CMD ["/app/fibonacci"]
