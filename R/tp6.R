#1) X ~ gamma((15625/5184), (625/7776))

#1)a) gráfica:

alpha <- (15625/5184)
lambda <- (625/7776)

x <- seq(0, 100, by = 0.1)
pdf <- dgamma(x, shape = alpha, rate = lambda)
plot(x, pdf, type = "l", main = "Función de Densidad - Distribución Gamma",xlab = "Valores de x", ylab = "Densidad de Probabilidad")

#1)b) P(X <= z0) = 0.75
z0 <- qgamma(0.75, shape=alpha, rate=lambda)
z0

#1)c) θ = Q3 (tercer cuartil)
#     estimador = cuantil muestral .75

R <- 800 #nro de réplicas
n <- 25 #tamaño de la muestra
vec <- rep(0, R) #vector de ceros de longitud R
set.seed(34)
for(i in 1:R){
	random_sample <- rgamma(n, shape = alpha, rate = lambda)
	vec[i] <- quantile(random_sample, probs = 0.75)
}

mean(vec)

#1)d)∴El experimento sugiere que el estimador es bueno.
#Por que la esperanza del estimador es casi igual al cuartil0.75 de la gamma.

#1)e)
estandar_error <- sd(vec)
estandar_error
#∴El error estándar es bajo???

