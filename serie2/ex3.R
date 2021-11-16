#=================================================exercice 3 =================================================

#Q1 Création d'un objet qui contient les mêmes colonnes que Airquality mais la température et la 
#vitesse du vent sont exprimées en degrés Celsius et en kilomètres par heure

temp<-transform(airquality,Temp.C=(Temp-32)/1.8,Wind.Km=Wind*1.6)
my.airquality<-temp[,-c(3,4)]
head(my.airquality)


#Q2 La corrélation entre niveau d'ozone et température.
cor(my.airquality$Ozone[complete.cases(my.airquality)],my.airquality$Temp.C[complete.cases(my.airquality)])


#Q3 le nuage de points (scatter plot) du niveau d'ozone en fonction de la température.
plot(my.airquality$Temp.C,my.airquality$Ozone)

