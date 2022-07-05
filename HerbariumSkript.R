Herbarium <- read.csv(file = 'Basidior.csv', header = TRUE)
attach(Herbarium)
Herbarium$Spcies1 <- paste(Herbarium$Rod_1, Herbarium$Druh_1)
Herbarium$Spcies2 <- paste(Herbarium$Rod_2, Herbarium$Druh_2)
install.packages("xlsx")

library(xlsx)
write.xlsx(Herbarium, file = "Herbarium.xlsx")

#To find the common values between x1 and y1 on the above created data frame, add the following code to the above snippet
df<-data.frame(Herbarium)
intersect(df$KZP,df$Labels)
