df <- data.frame(VentasA= c(60,65,59,66),
                 VentasB= c(70,69,65,60),
                 VentasC= c(50,59,60,52))

#contrastar las medias con nivel de confianza 0.95

#primero: igualdad de varianzas
var.test(df$VentasA, df$VentasB, conf.level = 0.95)

#segundo: test de medias con varianzas distintas
t.test(df$VentasA, df$VentasB, var.equal=FALSE, conf.level = 0.95)

#se acepta

p-value = 0.2715


data:  df$VentasA and df$VentasB
t = -1.2185, df = 5.6403, p-value = 0.2715
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -10.638303   3.638303
sample estimates:
mean of x mean of y 
     62.5      66.0 



