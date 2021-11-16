#=============================================exercice 1=========================================
#Q1 la nature du dataset
class(airquality)

#Q2 les dimensions du dataset
dim(airquality)

#Q3 Nombre des valeurs manquantes NA qui se trouvent dans la colonne "Ozone" du dataset
sum(is.na(airquality$Ozone)) 
summary(airquality)

#Q4 les lignes contenant au moins une valeur manquante NA ?
which(!complete.cases(airquality))

#Q5 la moyenne de la colonne "Ozone" en excluant les valeurs manquantes (codées comme NA)
mean(airquality[, "Ozone"], na.rm = TRUE)

#Q6 un sous-ensemble du dataset « airquality » qui ne contient aucune NA en supprimant les lignes qui contiennent au moins une NA 
sub_airquality<-airquality[complete.cases(airquality),]
head(sub_airquality)