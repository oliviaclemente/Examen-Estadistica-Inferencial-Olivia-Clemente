# Definir los datos
n <- 60  # Número total de vigas
x <- 52  # Número de vigas sin corrosión

# Probabilidad bajo la hipótesis nula
p_0 <- 0.9

# Realizar la prueba de proporciones
resultado_prueba <- prop.test(x, n, p = p_0, alternative = "less")

# Mostrar el resultado
print(resultado_prueba)

   p = 0.8666667 con un nivel de significacion del 0,90 entonces que significa?