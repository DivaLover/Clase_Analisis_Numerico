##############
#Pi en Binario
#Autores:
#Gabriel Ni�o
#Juliana Garcia
#Taller 1 - Analisis Numerico
##############
rm(list=ls()) #Borrar los datos guardados en memoria
#Primeros 15 bits decimales de Pi
bitsEntero<-c()
bitsDecimal<-c()
entero<-floor(pi)
decimal<-pi-entero
aux<-0
#Hayando los bits enteros
repeat{
  aux<-entero%%2
  entero<-entero%/%2
  bitsEntero<-c(aux,bitsEntero)
  if(entero == 1){
    bitsEntero<-c(entero,bitsEntero)
    break
  }
}
#Hayando bits decimales
repeat{
  if((length(bitsEntero)+length(bitsDecimal))>=15) break
  decimal<-decimal*2
  aux<-floor(decimal)
  bitsDecimal<-c(bitsDecimal,aux)
  if(aux == 1){
    decimal<-decimal-aux
  }
}
print(bitsEntero)
print(bitsDecimal)
#################################
