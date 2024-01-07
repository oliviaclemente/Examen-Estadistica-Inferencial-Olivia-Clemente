# Datos de los agentes
agente_a <- c(12, 11, 18, 16, 13)
agente_b <- c(14, 18, 22, 17, 16)

# Prueba t de Student para muestras independientes
resultado_prueba <- t.test(agente_a, agente_b)

# Mostrar el resultado
print(resultado_prueba)




#El resultado de la prueba t es el siguiente:

Estadístico t (
�
t): -1.8279
Grados de libertad (
�
�
df): 7.9976 (aproximadamente 8)
Valor p (
�
p): 0.105
El análisis se realiza para probar la hipótesis nula de que la verdadera diferencia en medias es igual a 0. La hipótesis alternativa es que la verdadera diferencia en medias no es igual a 0 (prueba bilateral).

El intervalo de confianza del 95% para la diferencia en medias es (-7.6896402, 0.8896402). Esto significa que, con un nivel de confianza del 95%, la verdadera diferencia entre las medias de las dos muestras podría estar en ese rango.

Las estimaciones de la media de la primera muestra (
�
ˉ
x
ˉ
 ) y la media de la segunda muestra (
�
ˉ
y
ˉ
​
 ) son 14.0 y 17.4, respectivamente.

La interpretación se basa en el valor p. Dado que el valor p (0.105) es mayor que el nivel de significancia común de 0.05, no hay suficiente evidencia para rechazar la hipótesis nula. En otras palabras, no hay suficiente evidencia para afirmar que la verdadera diferencia en medias es diferente de 0. Por lo tanto, no se puede concluir que haya una diferencia significativa entre las medias de las dos muestras.