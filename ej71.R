
# df que esta en el fichero
df <- read.csv("peso_altura.csv")
#normalidad
shapiro.test(df$altura)

t.test(df$notaA, mu=5, alternative = "greater")

n <- nrow(df)
frec <- table(df$calificacionA)["Aprobado"]
binom.test(frec, n, p = 0.5, alternative = "greater")
#rechazamos hipotesis nula de que la proporcion de aprobados es 0.5, nos quedmaos con la alterntaiva es mayor que 0.5

prop.test(frec, n, p = 0.5, alternative = "greater")
#rechazamos hipotesis nula de que la proporcion de aprobados es 0.5, nos quedmaos con la alterntaiva es mayor que 0.5

library(tidyverse)
df %>% group_by(sexo) 
var.test(notaA ~ sexo, data = df)

t.test(notaA ~ sexo, data = df, var.equal = TRUE)
# acepamos hipotesis nula de que las notas entre chicos y chicas son iguales
 
wilcox.test(notaA ~ sexo, data = df) # si no se cumple la normalidad, apartado f


# Comprobar si hay una diferencia significativa entre las notas medias de las asignaturas A
#y B, o lo que es lo mismo, comprobar si la media de la diferencia de las notas de A y B es
#distinta de 0.
t.test(df$notaA, df$notaB, mu=0) # rechazamos hipotesis nula de que la media de la diferencia de las notas de A y B es distinta de 0
var.test(df$notaA, df$notaB) # aceptamos hipotesis nula de que las varianzas son iguales

#Ver si las notas A y B están relacionadas y cuál es su grado de relación. Utilizar el
#coeficiente de correlación de Pearson y el de Spearman.
cor.test(df$notaA, df$notaB, method = "pearson") # rechazmos hipotesis nula de que no hay relacion entre las notas A y B
cor.test(df$notaA, df$notaB, method = "spearman") # rechazmos hipotesis nula de que no hay relacion entre las notas A y B

