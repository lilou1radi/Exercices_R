#================================================exercice5=============================================
library(DAAG)

#Q1 Les valeurs non manquantes pour la colonne root pour chaque esp�ce

rainforest

rainforest[complete.cases(rainforest$root), c(4,7)]


#Q2 l'histogramme de l'esp�ce Acmena smithii en fonction du diam�tre � hauteur de base (dhp)

Acmena <- subset(rainforest,species == "Acmena smithii")
hist(Acmena$dbh,  main="histogram of dbh of species Acmena smithii", xlab="diameter at base height",col=5)



