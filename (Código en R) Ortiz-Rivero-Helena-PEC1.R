# Código en R del informe Ortiz-Rivero-Helena-PEC1:

writeLines(c(
  "# Instalación y carga de paquetes",
  "if (!requireNamespace('BiocManager', quietly = TRUE)) install.packages('BiocManager')",
  "BiocManager::install(c('SummarizedExperiment', 'ggplot2'), force = TRUE)",
  "suppressMessages({",
  "  library(SummarizedExperiment)",
  "  library(readr)",
  "  library(dplyr)",
  "  library(ggplot2)",
  "  library(tidyr)",
  "})",
  
  "# Carga de datos",
  "data_info <- read_csv('DataInfo_S013.csv')",
  "data_values <- read_csv('DataValues_S013.csv')",
  "",
  "# Visualización de los primeros registros",
  "head(data_info, 5)",
  "head(data_values[, 1:10], 5)",
  
  "# Preparación de los datos de expresión",
  "datos_expresion <- as.matrix(data_values[, -1])",
  "rownames(datos_expresion) <- data_values$SUBJECTS",
  
  "# Conversión de los metadatos a data frame",
  "metadatos <- as.data.frame(data_info)",
  "rownames(metadatos) <- metadatos$VarName",
  
  "# Verificación de dimensiones",
  "cat('Dimensiones de datos_expresion:', dim(datos_expresion), '\\n')",
  "cat('Dimensiones de metadatos:', dim(metadatos), '\\n')",
  
  "# Creación del objeto SummarizedExperiment",
  "se <- SummarizedExperiment(",
  "  assays = list(counts = datos_expresion),",
  "  colData = metadatos",
  ")",
  
  "# Guardar el objeto en formato .Rda",
  "save(se, file = 'Summarized_Experiment.Rda')",
  
  "# Exploración y resumen de los datos",
  "summary(se)",
  "summary(metadatos)",
  "apply(as.matrix(datos_expresion[, 1:5]), 2, summary)",
  
  "# Distribución de edad",
  "edad <- as.numeric(as.character(data_values$AGE))",
  "hist(edad, breaks = 20, main = 'Distribución de Edad de los Pacientes', xlab = 'Edad', ylab = 'Frecuencia', col = 'coral2')",
  
  "# Transformación y visualización del IMC en distintos timepoints",
  "bmi_all <- data_values %>%",
  "  pivot_longer(cols = starts_with('bmi_T'), names_to = 'Timepoint', values_to = 'BMI')",
  
  "ggplot(bmi_all, aes(x = Timepoint, y = BMI, fill = Timepoint)) +",
  "  geom_boxplot() +",
  "  labs(title = 'Distribución del IMC en los distintos timepoints', x = 'Timepoints', y = 'IMC') +",
  "  theme_classic()"
), con = "analisis_datos.R")
