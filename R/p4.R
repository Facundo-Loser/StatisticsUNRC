#práctica 4:

#1) 
#Cada variable aleatoria continua es: X ~ N(5000, 100^2)
proba <- 1 - pnorm(5002, mean = 5000, sd = sqrt(100))
res <- paste("P(Σ Xi <= 5002) = ", proba)
res

#2)b)
proba  <- pnorm(12, mean = 15, sd = sqrt(75))
res <- paste("P(X <= 12) = ", proba)
res

#3)
#cada archivo individualmente: X ~ N(15, 11^2)
#paquete toal: X ~ (68 x 15, 68 x 11^2)

proba <- pnorm(12, mean = (68*15), sd = sqrt(100))