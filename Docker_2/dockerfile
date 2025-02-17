# Dockerfile del contenedor base
FROM docker:latest

RUN apk add --no-cache bash

WORKDIR /app

# Copiar los archivos locales al contenedor
COPY . /app

# Dar permisos de ejecución al script
RUN chmod +x /app/run_benchmark.sh

CMD ["bash", "/app/run_benchmark.sh"]

