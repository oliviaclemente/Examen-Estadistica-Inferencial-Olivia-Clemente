# Establecer la semilla para reproducibilidad
#set.seed(23)

# Generar 15 valores de una población normal
#datos <- rnorm(15, mean = 5, sd = sqrt(3))

# Calcular el intervalo de confianza para la media poblacional al 10%
#intervalo_confianza <- t.test(datos, conf.level = 0.90)

# Mostrar el resultado
#print(intervalo_confianza)
# Establecer la semilla para reproducibilidad
set.seed(23)

# Generar 15 valores de una población normal con media 5 y varianza 3
datos <- rnorm(15, mean = 5, sd = sqrt(3))

# Calcular el intervalo de confianza para la varianza poblacional al 10%
#intervalo_confianza_varianza <- var.test(datos, conf.level = 0.90)

# Mostrar el resultado
#print(intervalo_confianza_varianza)





# a) Estimación puntual de la media y la varianza
mean_value <- mean(datos)
variance_value <- var(datos)

cat("Estimación puntual de la media:", mean_value, "\n")
cat("Estimación puntual de la varianza:", variance_value, "\n\n")

# b) Intervalo de confianza al 95% para la media y la varianza
confidence_level_95 <- 0.10

# Intervalo de confianza para la media
t_critical_value <- qt((1 - confidence_level_95) / 2 + confidence_level_95, length(data) - 1)
mean_confidence_interval <- mean_value + c(-1, 1) * t_critical_value * (sd(data) / sqrt(length(data)))

# Intervalo de confianza para la varianza
chi2_lower <- qchisq((1 - confidence_level_95) / 2, df = length(data) - 1)
chi2_upper <- qchisq(1 - (1 - confidence_level_95) / 2, df = length(data) - 1)
variance_confidence_interval <- c((length(data) - 1) * variance_value / chi2_upper, (length(data) - 1) * variance_value / chi2_lower)

cat("Intervalo de confianza para la media (95%):", mean_confidence_interval, "\n")
cat("Intervalo de confianza para la varianza (95%):", variance_confidence_interval, "\n\n")


