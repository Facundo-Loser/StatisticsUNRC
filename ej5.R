#Ejercicio 5:

#5)a) 

#X ~ N(3,7)
x <- seq(-3,9,0.1)
y <- dnorm(x,mean=3,sd=sqrt(7)) 
plot(x,y,type = "l", main='Gráfico de la densidad de una N(3,7)', lwd = 2, col = "blue")

#Y ~ N(3,1)
x <- seq(-3,9,0.1)
y <- dnorm(x, y, mean = 3, sd = sqrt(1))
plot(x,y,type = "l", main='Gráfico de la densidad de una N(3,1)', lwd = 2, col = "blue")

#X ~ gamma(2,1)
x <- seq(0,10,by=0.05) 
y <- dgamma(x,shape=2,scale=1/1) # shape es alpha, scale=1/lambda; o bien rate=\lambda
plot(x,y,type = "l", lwd = 2, col = "violet",  main='Gráfico de la densidad de una gamma(2,1)')


#Y ~ gamma(0.1,5)
x <- seq(0,1,by=0.05) 
y <- dgamma(x,shape=0.1,scale=1/5) # shape es alpha, scale=1/lambda; o bien rate=\lambda
plot(x,y,type = "l", lwd = 1, col = "green",  main='Gráfico de la densidad de una gamma(0.1,5)')

#5)b)

#Z ~ N(0,1)

#P(-0.5 <= Z <= 1) = F(1) - F(-0.5) 
proba<- pnorm(1)-pnorm(-0.5)
res <- paste("P(-0.5 <= Z <= 1) = ", proba)
res

x<-seq(-2,2,by=0.05) 
y<-dnorm(x,0,1) 
plot(x,y,type = "l", lwd = 2, col = "violet", main = 'Gráfico de la densidad de una N(0,1)')

x2 <- seq(-0.5,1, 0.01)
y2 <-  dnorm(x2) 
x2 = c(-0.5,x2,1)
y2 = c(0,y2,0)
polygon(x2,y2, col="blue", border=NA)

#P(Z <= -10)
proba<- pnorm(-10, mean=0, sd=sqrt(1))
res <- paste("P(Z <= -10) = ", proba)
res


#X ~ N(5,2)

#P(X >= 1.2) = 1 - P(X < 1.2) = 1 - P(X <= 1.2)
proba<- 1-pnorm(1.2, mean=5, sd=sqrt(2))
res <- paste("P(X >= 1.2) = ", proba)
res

x<-seq(-1,12,by=0.05) 
y<-dnorm(x,mean=5, sd=sqrt(2))
 
plot(x,y,type = "l", lwd = 2, col = "black", main = 'Gráfico de una N(5,2)')

x2 <- seq(1.2,20, 0.01)
y2 <-  dnorm(x2,mean=5, sd=sqrt(2))
x2 = c(1.2,x2,20)
y2 = c(0,y2,0)
polygon(x2,y2, col="blue", border=NA)



#5)c)

#Y ~ N(2,16)
#P(Y >= z0)

z0 <- qnorm(0.117, mean = 2, sd = 4, lower.tail = FALSE)
res <- paste("el valor de z0 es: ", z0)
res

#Z ~ N(0,1)
z0neg <- qnorm(0.05, mean = 0, sd = 1)
z0 <- qnorm(0.95, mean = 0, sd = 1)
res <- paste("el valor de -z0 es: ", z0neg, " y el valor de z0 es: ", z0)
res

#X ~ N(0, 0.01)
z0neg <- qnorm(0.05, mean = 0, sd = sqrt(0.01))
z0 <- qnorm(0.95, mean = 0, sd = sqrt(0.01))
res <- paste("El valor de -z0 es: ", z0neg, " y el valor de z0 es: ", z0)
res

#5)d) X ~ gamma(4,2)
z0 <- qgamma(0.84, shape = 4, rate = 2)
z1 <- qgamma(0.16, shape = 4, rate = 2)
res <- paste("El valor de z0 es: ", z0, " y el valor de z1 es: ", z1)
res