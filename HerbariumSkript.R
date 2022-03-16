Herbarium <- read.csv(file = 'Basidior.csv', header = TRUE)
attach(Herbarium)
Herbarium$Spcies1 <- paste(Herbarium$Rod_1, Herbarium$Druh_1)
Herbarium$Spcies2 <- paste(Herbarium$Rod_2, Herbarium$Druh_2)
install.packages("xlsx")

library(xlsx)
write.xlsx(Herbarium, file = "Herbarium.xlsx")

