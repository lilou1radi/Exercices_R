#==================================================exercice 2===================================

#q1 le sous-ensemble de lignes du dataset où les valeurs d'ozone sont supérieures à 
#31 et les valeurs de température sont supérieures à 90.
subset(airquality, Ozone>31 & Temp>90)
airquality[airquality$Temp>90 & airquality$Ozone>31, ]


#Q2 création d'un vecteur de longueur 6 contenant la moyenne de 
#chaque colonne du dataset (à l'exclusion de toutes les valeurs manquantes).
n <- numeric(6)
for (i in 1:6) {
  n[i] <- mean(airquality[, i], na.rm = TRUE)
}
print(n)


#Q3 L'écart type de chaque colonne du dataset (à l'exclusion de toutes les valeurs manquantes)
s <- apply(airquality, 2, sd, na.rm = TRUE)
print(s)


#Q4 La moyenne de « Ozone » pour chaque mois dans le dataset et créez un vecteur 
#contenant les moyennes mensuelles (excluez toutes les valeurs manquantes).
tapply(airquality$Ozone, airquality$Month, mean, na.rm = TRUE)


#Q5 Echantillon aléatoire de 5 lignes du dataset
set.seed(1)
airquality[sample(nrow(airquality), 5), ]

