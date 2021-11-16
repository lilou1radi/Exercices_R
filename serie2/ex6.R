#===============================================exercice6============================================
library(DAAG)

#Q1
hist(cuckoos$length)

#Q2
mean(cuckoos$length, na.rm =TRUE)
sd(cuckoos$length, na.rm= TRUE)

#Q4
qqnorm(cuckoos$length, pch = 1, frame = FALSE)
qreference(cuckoos$length)

#Q5
library(magrittr)
cuckoos$length %>% density() %>% plot(main='Densité de egg.Length')

#Q6
#1
wren <- subset(cuckoos, species == "wren")
hist(wren$length)  #ou bien :  hist(cuckoos$length[cuckoos$species=="wren"])

#4
qqnorm(wren$length, pch = 1, frame = FALSE) # ou bien: qqnorm(cuckoos$length[cuckoos$species=="wren"])

qreference(cuckoos$length[cuckoos$species=="wren"])

#5
wren$length %>% density() %>% plot(main='Densité de wren.Length')
