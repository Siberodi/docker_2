#!/bin/bash

echo "Ejecutando benchmarks..."

# Directorios con los lenguajes
LANGUAGES=("python" "java" "csharp" "js" "go")

# Eliminar el archivo de resultados si ya existe
rm -f resultados.txt

for lang in "${LANGUAGES[@]}"
do
    echo "Ejecutando en $lang..."
    
    # Construir y correr el contenedor
    docker build -t fibonacci-$lang ./$lang
    TIME=$(docker run --rm fibonacci-$lang 2>/dev/null)
    
    # Guardar resultado en archivo
    echo "$lang: $TIME ms" >> resultados.txt
done

echo "Resultados finales:"
cat resultados.txt

