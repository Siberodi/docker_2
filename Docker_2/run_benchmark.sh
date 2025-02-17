#!/bin/bash

echo "Ejecutando benchmarks..."

# Directorios con los lenguajes
LANGUAGES=("python" "java" "csharp" "js" "go")

# Reiniciar el archivo de resultados
> resultados.txt

for lang in "${LANGUAGES[@]}"
do
    echo "Ejecutando en $lang..."
    
    # Construir la imagen del contenedor
    docker build -t fibonacci-$lang ./$lang
    if [ $? -ne 0 ]; then
        echo "$lang: ERROR al construir la imagen" >> resultados.txt
        continue
    fi

    # Ejecutar el contenedor y capturar el tiempo
    TIME=$(docker run --rm fibonacci-$lang 2>/dev/null)

    # Validar si TIME está vacío
    if [ -z "$TIME" ]; then
        echo "$lang: ERROR en la ejecución" >> resultados.txt
    else
        echo "$lang: $TIME ms" >> resultados.txt
    fi
done

echo "Resultados finales:"
cat resultados.txt
