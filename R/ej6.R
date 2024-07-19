#Ejercicio 6 - tp3

#X ~  N(85.3, (2.7)^2)
print("Ejercicio 6 - X ~  N(85.3, (2.7)^2)")

#6)a) P(X > 100) = 1 - P(X <= 100) = 1 - F(100)
proba <- 1 - pnorm(100, mean = 85.3, sd = 2.7)
res <- paste("P(X > 100) = ", proba)
res

#6)b) P(X < x0) = 0.95 (Hay que hallar el cuantil)
x0 <- qnorm(0.95, mean = 85.3, sd = 2.7)
res <- paste("El valor de x0 es: ", x0)
res

#para corroborar:
proba <- pnorm(x0, mean = 85.3, sd = 2.7)
res <- paste("P(X < 0.89) = ", proba)
res

#6)c) P(82.6 <= X <= 88) = F(88) = F(82.6) = P(X <= 88) - P(X <= 82.6)
proba <- pnorm(88, mean = 85.3, sd = 2.7) - pnorm(82.6, mean = 85.3, sd = 2.7)
res <- paste("P(82.6 <= X <= 88) = ", proba)
res

#Ejercicio 8 - tp3

#dato: E(X) = 2.4

#X ~ exponencial(1/2.4) = X ~ N(1,1/2.4)
print("Ejercicio 8 - X ~ exponencial(1/2.4) = X ~ N(1,1/2.4)")
lambda <- 1/2.4

#8)a) P(X > 3) = 1 - P(X <= 3) = 1 - F(3)
proba <- 1 - pexp(3, rate = lambda)
res <- paste("P(X > 3) = ", proba)
res

#8)b) P(2 <= X <= 3) = F(3) - F(2) = P(X <= 3) - P(X <= 2)
proba <- pexp(3, rate = lambda) - pexp(2, rate = lambda)
res <- paste("P(2 <= X <= 3) = ", proba)
res

#8)c) P(X >= 2*DESV(X)) = 1 - P(X < 2*DESV(X)) = 1 - P(X <= 2*DESV(X))

#Análisis:
#E(X) = 2.4 = 1/λ   -->   λ = 1/2.4
#VAR(X) = 1/λ^2 = (2.4)^2 = 5.76
#DESV(X) = sqrt(5.76) = 2.4   --> 2*DESV(X) = 4.8

proba <- pexp(4.8, rate = lambda)
res <- paste("P(X >= 2*DESV(X)) = ", proba)
res

#9) T ~ exponencial(3)
print("Ejercicio 9 - T ~ exponencial(3)")
lambda <- 3

#P(T <= 5)
proba <- pexp((5/60), rate = lambda)
res <- paste("P(T <= 5) = ", proba)
res


#10) X ~ gamma(9, 3/4)
print("Ejercicio 10 - X ~ gamma(9, 3/4)")

#Análisis:
#Tengo como datos: E(X) = 12, DESV(X) = 4
#Hago un sistema y resuelvo por sustitución:

#{ 12 = α/λ
#{ 4 = sqrt(α/λ^2)

#Luego de aquí se obtiene: α = 9 y λ = 3/4

#parámetro de forma:
forma <- 9      
#parámetro de escala:
escala <- (3/4)

#P(8 <= X <= 10) = F(10) - F(8) = P(X <= 10) - P(X <= 8)
proba <- pgamma(10, shape = forma, rate = escala) - pgamma(8, shape = forma, rate = escala)
res <- paste("P(8 <= X <= 10) = ", proba)
res