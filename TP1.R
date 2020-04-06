getwd()

setwd("C:/Users/Yo/Desktop/2020/Maestría Austral/Estadistica/TP1")

getwd()

datos <- read.csv2("datos.csv", header=T) # LEEMOS EL ARCHIVO DE DATOS

IncomeGroup <- table(datos$IncomeGroup)
pie(IncomeGroup)

# Grafico editado

pie(IncomeGroup,
    labels = c("Low income","High income","Lower middle income","Upper middle income"),
    col = c("red","blue","yellow","grey"),
    main = "Grafico circular para la variable IncomeGroup")

# Para graficar un grafico de barras

barplot(IncomeGroup)

# Grafico editado

barplot(IncomeGroup,
        col = c("red","blue","yellow","grey"),
        main = "Grafico de barras para la variable IncomeGroup",axis.lty = 1)


## MEDIDAS QUE RESUMEN INFORMACION ##

GDPpc <- datos$GDPpc

mean(GDPpc, na.rm = T)

# Si hubiera valores faltantes daria NA, una forma de calcular la media descartando los valores faltantes es con na.rm=T

median(GDPpc,na.rm = T)

min(GDPpc,na.rm = T)

max(GDPpc,na.rm = T)

quantile(GDPpc,na.rm = T)


# lo mismo calcula fivenum
fivenum(GDPpc,na.rm = T)

# si queremos otros percentiles

quantile(GDPpc,na.rm = T, probs = c(0.10,0.30,0.90,0.95))

summary(GDPpc)

range(GDPpc)

diff(range(GDPpc))

#Otra forma

max(GDPpc)-min(GDPpc)

var(GDPpc)

sd(GDPpc)  #desvio estandar

IQR(GDPpc) #rango intercuartil

mad(GDPpc) #desvio absoluto medio

100*sd(GDPpc)/mean(GDPpc)

#Si queremos solo dos cifras decimales

round(100*sd(GDPpc)/mean(GDPpc),2)

# Graficos

hist(GDPpc)

histo.GDPpc <- hist(GDPpc)
names(histo.GDPpc)
histo.GDPpc$breaks
histo.GDPpc$mids
histo.GDPpc$counts

#Boxplot
par(mfrow=c(1,1))
boxplot(GDPpc,col="green",ylab="GDPpc")

#Horizontal

x11()   ### para que no me pise los graficos y tenerlos abiertos

boxplot(GDPpc,col = "green",xlab = "GDPpc",horizontal=T)


data.class(GDPpc)



# Guardamos la nueva base

write.csv2(datos,"datos.csv")
