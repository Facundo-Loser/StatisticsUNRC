#2)b)i)

#Datos:
#n = length(clima$prcp)
#X barra = mean(clima$prcp)

#n = length(base_datos$precipitación)
#X barra = mean(base_datos$precipitación)

#intervalo de rechazo: 
qnorm(0.99);


#2)b)ii) Cuantiles:

#Z sub α/2 = Z sub 0.005:
qnorm(1 - 0.005)

#-Z sub α/2 = -Z sub 0.005:
qnorm(0.005)

#2)b)iii)

#datos:
#n = length(clima$prcp)

#COMPLETAR!!:
#cantdidad de datos de la variable: "flujo vehicular Alto" = length(COMPLETAR!!) = 49

#p-valor: 
2*(1-pnorm(0.8432740427))