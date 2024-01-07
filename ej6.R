data <- c(4.01, 3.87, 4.68, 2.83, 3.88, 4.92, 4.46, 5.64, 4.91, 2.35, 4.12, 1.11)
mean_value <- mean(data)
variance_value <- var(data)

confidence_level_95 <- 0.95

# Intervalo de confianza para la media
t_critical_value <- qt((1 - confidence_level_95) / 2 + confidence_level_95, length(data) - 1)
mean_confidence_interval <- mean_value + c(-1, 1) * t_critical_value * (sd(data) / sqrt(length(data)))

# Intervalo de confianza para la varianza
chi2_lower <- qchisq((1 - confidence_level_95) / 2, df = length(data) - 1)
chi2_upper <- qchisq(1 - (1 - confidence_level_95) / 2, df = length(data) - 1)
variance_confidence_interval <- c((length(data) - 1) * variance_value / chi2_upper, (length(data) - 1) * variance_value / chi2_lower)

cat("Intervalo de confianza para la media (95%):", mean_confidence_interval, "\n")
cat("Intervalo de confianza para la varianza (95%):", variance_confidence_interval, "\n\n")
