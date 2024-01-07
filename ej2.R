A<- c(60, 65, 59, 66) 
B <-c(70, 69, 65, 66)
C<- c(50,59, 60,52)

#test contigencia
df <- data.frame(A, B, C)
chisq.test(df)
#como p es menor que 0.05, se rechaza la hipotesis nula. No son independientes



#p = 0,943 con un nivel del 0,05 se acepta o se rechaza la hipoteisis nula ? se acept al a ho