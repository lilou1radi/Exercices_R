#=======================================================exercice4========================================

#Q1 le revenu par habitant (per capita income) des États qui ont moins de 40 jours 
# avec une température minimale en dessous de zéro.

stx77 <- data.frame(state.x77)
stx77[stx77$Frost < 40, c(2,7)] # 2 : Income /  et 7: Frost

#Q2 Les états qui ont moins de 40 jours avec une température minimale en dessous de 0 et 
#une espérance de vie supérieure à 71 ans.

stx77[stx77$Frost < 40 & stx77$Life.Exp > 71, c(4,7)]

#Q3 La moyenne pour chaque variable dans cet dataset. 

colMeans(stx77, na.rm = TRUE)

#Q4 L'écart type pour chaque variable dans cet dataset.

library(matrixStats)
colSds(as.matrix(stx77), na.rm = TRUE)

