# PEC 1: Análisis de Datos Ómicos

### Autora: Helena Ortiz Rivero
### Universitat Oberta de Catalunya (06/11/2024)

---

## Descripción del Proyecto

Este proyecto es parte de la primera Prueba de Evaluación Continua (PEC 1) de la asignatura de Análisis de Datos Ómicos. El objetivo principal es analizar un conjunto de datos clínicos y metabolómicos de pacientes sometidos a cirugía bariátrica para identificar perfiles metabólicos ("metabotypes"). La estructura de datos y el análisis se realizaron utilizando R y el contenedor `SummarizedExperiment` de Bioconductor.

## Estructura del Repositorio

El repositorio contiene los siguientes archivos:

- **analisis_datos.R**: Script principal en R que contiene todo el código para el análisis de datos.
- **DataValues_S013.txt**: Datos clínicos y metabolómicos en formato de texto (.txt).
- **Summarized_Experiment.Rda**: Objeto `SummarizedExperiment` en formato binario, que contiene los datos organizados para el análisis en R.
- **metadatos.md**: Archivo de metadatos que describe las variables y archivos del dataset.
- **Informe.pdf**: informe en formato .pdf

## Objetivos del Proyecto

- Preparar y cargar un dataset de metabolómica.
- Crear un contenedor de tipo `SummarizedExperiment` para organizar y estructurar los datos.
- Realizar un análisis exploratorio de los datos, evaluando su calidad y estructura.
- Publicar los archivos y el análisis en un repositorio de GitHub.

## Metodología

1. **Preparación de los Datos**: Los datos fueron importados desde archivos `.csv` y organizados en un objeto `SummarizedExperiment` para facilitar su análisis.
2. **Análisis Exploratorio**: Se realizaron análisis estadísticos básicos y visualizaciones para comprender la distribución y características de los datos, incluyendo gráficos de la distribución de edad y de índices de masa corporal (IMC) en varios momentos.
3. **Almacenamiento**: Los datos y resultados se guardaron en el repositorio en diferentes formatos (`.R`, `.txt`, `.md`, `.Rda`) para permitir la reutilización y análisis por otros usuarios.

## Uso del Código

Para ejecutar el análisis:

1. Clona el repositorio:
   ```bash
   git clone https://github.com/helenaortizz/Ortiz-Rivero-Helena-PEC1.git
   cd Ortiz-Rivero-Helena-PEC1
