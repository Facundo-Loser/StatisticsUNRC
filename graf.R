#Ejercicio 1 - Práctica 3 (gráfica de la función de densidad)
x <- seq(-5,5,0.1)

densidad <- function(x){
	if(x >= 1){
		y = (4*(x^(-5)))
		}else{
			y = 0
		}

		return(y)
}

y = lapply(x, densidad)

plot(x, y, type = "l", lty = 1:6)