# Datos
matriz_datos <- matrix(c(17, 20, 13, 20, 15, 15, 26, 16, 9), nrow = 3, byrow = TRUE)

# Prueba de chi-cuadrado
resultado_chi_cuadrado <- chisq.test(matriz_datos)

# Mostrar el resultado
print(resultado_chi_cuadrado)


p-value = 0.3656 con un nivel de significacion del 