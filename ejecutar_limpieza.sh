#!/bin/bash

# Creamos la carpeta donde irán los archivos limpios
mkdir -p resultados_limpios

# Bucle for para buscar todos los archivos .fastq.gz y procesarlos
for archivo in *.fastq.gz; do
    echo "========================================"
    echo "Empezando a limpiar: $archivo"
    echo "========================================"
    
    # Ejecutamos Trim Galore
    trim_galore --fastqc -o resultados_limpios/ "$archivo"
    
done

echo "¡Análisis terminado con éxito!"
