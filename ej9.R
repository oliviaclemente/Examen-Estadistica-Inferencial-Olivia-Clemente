# Datos antes del plan
n_before <- 2000
x_before <- 655

# Proporción antes del plan
p_before <- x_before / n_before

# Datos después del plan
n_after <- 1500
x_after <- 576

# Proporción después del plan
p_after <- x_after / n_after

# Realizar la prueba de proporciones
resultado_prueba <- prop.test(c(x_before, x_after), c(n_before, n_after), alternative = "greater")

# Extraer el p-valor
p_valor <- resultado_prueba$p.value

# Mostrar el p-valor
print(p_valor)
