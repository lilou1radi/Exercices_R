#=================================================exercice 3 =================================================

#Q1 Cr�ation d'un objet qui contient les m�mes colonnes que Airquality mais la temp�rature et la 
#vitesse du vent sont exprim�es en degr�s Celsius et en kilom�tres par heure

temp<-transform(airquality,Temp.C=(Temp-32)/1.8,Wind.Km=Wind*1.6)
my.airquality<-temp[,-c(3,4)]
head(my.airquality)


#Q2 La corr�lation entre niveau d'ozone et temp�rature.
cor(my.airquality$Ozone[complete.cases(my.airquality)],my.airquality$Temp.C[complete.cases(my.airquality)])


#Q3 le nuage de points (scatter plot) du niveau d'ozone en fonction de la temp�rature.
plot(my.airquality$Temp.C,my.airquality$Ozone)

