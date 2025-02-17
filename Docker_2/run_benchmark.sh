#!/bin/bash

echo "Ejecutando benchmarks..."

# Directorios con los lenguajes
LANGUAGES=("python" "java" "csharp" "js" "go")

# Reiniciar el archivo de resultados
> resultados.txt

for lang in "${LANGUAGES[@]}"
do
    echo "========================"
    echo "Ejecutando en $lang..."
    
    # Construir la imagen del contenedor
    docker build -t fibonacci-$lang ./$lang > build_log_$lang.txt 2>&1
    if [ $? -ne 0 ]; then
        echo "$lang: ERROR al construir la imagen" >> resultados.txt
        echo "Error al construir $lang. Ver build_log_$lang.txt"
        continue
    fi

    # Ejecutar el contenedor y capturar el tiempo
    TIME=$(docker run --rm fibonacci-$lang 2>&1)
    EXIT_CODE=$?

    # Si hubo error en la ejecución, lo mostramos
    if [ $EXIT_CODE -ne 0 ]; then
        echo "$lang: ERROR en la ejecución" >> resultados.txt
        echo "Error en ejecución de $lang: $TIME" > error_log_$lang.txt
    else
        echo "$lang: $TIME ms" >> resultados.txt
    fi
done

echo "========================"
echo "Resultados finales:"
cat resultados.txt

