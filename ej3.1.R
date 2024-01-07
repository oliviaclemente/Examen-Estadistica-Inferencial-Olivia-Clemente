set.seed(23)

# Generar 15 valores de una población normal con media 5 y varianza 3
datos <- rnorm(15, mean = 5, sd = sqrt(3))

#Estimacion puntual
m <-mean(datos)
s2 <- var(datos)
print(m)
print(s2)

#interalo para la media poblacional
t.test(x, conf.level=0.10)$conf

#intervalo para la varianza poblacional
n <- length(x)
k1 <- qchisq(0.975, n-1, lower.tail = FALSE)
k2 <- qchisq(0.025, n-1, lower.tail = FALSE)
ICVAR <- c(((n-1)*s2)/k2, ((n-1)*s2)/k1)

print(ICVAR)

