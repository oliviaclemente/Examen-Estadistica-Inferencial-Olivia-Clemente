# Crear la matriz de datos
datos <- matrix(c(23, 12, 34, 32, 18, 42, 16, 27), nrow = 2, byrow = TRUE)

# Asignar nombres a las filas y columnas
rownames(datos) <- c("Orientado", "No orientado")
colnames(datos) <- c("Sin Estudios", "Estudios Básicos", "Estudios Medios", "Estudios Superiores")

# Realizar la prueba de chi-cuadrado
resultado_chi_cuadrado <- chisq.test(datos)

# Mostrar el resultado
print(resultado_chi_cuadrado)

