#=======================================================exercice4========================================

#Q1 le revenu par habitant (per capita income) des �tats qui ont moins de 40 jours 
# avec une temp�rature minimale en dessous de z�ro.

stx77 <- data.frame(state.x77)
stx77[stx77$Frost < 40, c(2,7)] # 2 : Income /  et 7: Frost

#Q2 Les �tats qui ont moins de 40 jours avec une temp�rature minimale en dessous de 0 et 
#une esp�rance de vie sup�rieure � 71 ans.

stx77[stx77$Frost < 40 & stx77$Life.Exp > 71, c(4,7)]

#Q3 La moyenne pour chaque variable dans cet dataset. 

colMeans(stx77, na.rm = TRUE)

#Q4 L'�cart type pour chaque variable dans cet dataset.

library(matrixStats)
colSds(as.matrix(stx77), na.rm = TRUE)

