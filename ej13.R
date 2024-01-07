# Crear la tabla de frecuencias
tabla_frecuencias <- matrix(c(23, 12, 34, 32), c(18, 42, 16, 27), nrow = 2, byrow = TRUE)

# Aplicar la prueba de chi-cuadrado
resultado_chi_cuadrado <- chisq.test(tabla_frecuencias)

# Mostrar el resultado
print(resultado_chi_cuadrado)

 p-value = 8.963e-14

