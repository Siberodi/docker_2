#!/bin/bash

echo "Ejecutando benchmarks..."

# Directorios con los lenguajes
LANGUAGES=("python" "java" "csharp" "js" "go")

for lang in "${LANGUAGES[@]}"
do
    echo "Ejecutando en $lang..."
    
    # Construir y correr el contenedor
    docker build -t fibonacci-$lang ./$lang
    TIME=$(docker run --rm fibonacci-$lang)
    
    echo "$lang: $TIME ms" >> resultados.txt
done

echo "Resultados finales:"
cat resultados.txt
