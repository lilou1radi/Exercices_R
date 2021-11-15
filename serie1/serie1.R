#===================================exercice1================================

#créer les vecteurs
Age<-c(22, 25, 18, 20)
Nom<-c("Ahmed", "Ayoub", "Sara", "Hind")
Sexe<-c("H", "H", "F", "F")

#///solution 1

#créer le dataframe
df1<-data.frame(Age,Nom,Sexe)
print(df1)
#afficher les deux premières lignes du dataframe
my_df<-df1[1:2,]
print(my_df)

#///solution 2

DataFrame = data.frame(Age,Nom,Sexe)
subset(DataFrame,Sexe=="H")


#===================================exercice2================================

#créer les vecteurs
x <- c(2, 4, 6, 8)
y <- c(TRUE, TRUE, FALSE, TRUE)
sum(x[y])


#===================================exercice3================================

x<-c(10, 20, 30, 25, 9, 26)

#///solution 1:

#ordre croissant
x[order(x)]
#ordre décroissant
x[order(x, decreasing=TRUE)]

#///solution 2:
print("Ordre croissant:")
print(sort(x))
print("Ordre decroissant:")
print(sort(x, decreasing=TRUE))



#===================================exercice4================================

x<-c(10, 20, 30, 20, 20, 25, 9, 26)

#///solution 1
table(factor(x))

#///solution 2
print("la valeur(20) se répète dans le vecteur:")
print(sum(x==20))



#===================================exercice5================================

v = c(15,26,9,7,10,0,9,15)
#test si la valeur d'un élément dans le vecteur v est inférieur à 10
print(v<10)



#===================================exercice6================================
#création des vecteurs
v <- c(45:41, 30:33)
b <- LETTERS[rep(1:3, 3)]
n <- round(rnorm(9, 65))

#création du dataframe
df2<-data.frame(v,b,n)
print(df2)

#Trier le data frame par la première colone.
#///solution 1
positions<-order(df2$v)
df2[positions, ]

#///solution 2
df2[with (df2, order(v)),]



#===================================exercice7================================
#création de la matrice
matrice <- matrix(1:20, ncol = 5)
print(matrice)
#création du dataframe
df <- as.data.frame(matrice)
print(df)
#changer les attributs des lignes au id_i(avec i le numéro de ligne) de même pour les colonnes variables_i.
colnames(df) <- paste("variable_", 1:ncol(df))
rownames(df) <- paste("id_", 1:nrow(df))
#afficher le df pour vérifier les modifications
print(df)



#===================================exercice8================================

#a- vérifier si VADeaths est un Data Frame
is.data.frame(VADeaths)
#le rendre de type Data frame
vadeaths<-as.data.frame(VADeaths)
print(vadeaths)

#b- somme de chaque ligne
total<-rowSums(vadeaths[,-1])
print(total)

#c- Changer l'ordre des colonnes de telle sorte total est la première colonne.
cbind(total,vadeaths)

#///autre solution possible 
#b
vadeaths$Total <- vadeaths[, 1] + vadeaths[, 2] + vadeaths[, 3] + vadeaths[, 4]
#c
vadeaths <- vadeaths[, c(5, 1:4)]



#===================================exercice9================================
#a- vérifier si state.x77 est un Data Frame
is.data.frame(state.x77)
#le rendre de type Data frame
stx77<-as.data.frame(state.x77)
print(stx77)
#b- Trouver les states qui ont un revenue moins de 4300
subset(stx77,subset = Income<4300)

#c- Trouver quelle state avec le plus haut revenue.
maxi<-max(stx77$Income)
subset(stx77,subset= Income==maxi)

#///autre solution possible
#b-
nrow(subset(stx77, stx77$Income < 4300))
#c-
row.names(stx77)[(which(max(stx77$Income) == stx77$Income))]



#===================================exercice10================================

ma_liste<-list(g1 = 1:10, g2 = "R Programming", g3 = "HTML")
#ajouter 10 a chaque élément du premier vecteur.
ma_liste$g1+10



#===================================exercice11================================
ma_liste<-list(g1 = 1:10, g2 = "R Programming", g3 = "HTML")
#affiche tous les éléments du premier vecteur sauf le 3ème
ma_liste[["g1"]][-3]

