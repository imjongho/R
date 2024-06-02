library(car)
library(MASS)

newdata2 <- Prestige[,c(1:5)]
head(newdata2)
mod2 <- lm(income~education + prestige + women + census, newdata2)
mod3 <- stepAIC(mod2)
mod3
summary(mod3)


head(Prestige)
newdata <- Prestige[,c(1:4)]
plot(newdata, pch = 16, col = "blue", main = "Matrix Scatterplot")
mod1 <- lm(income~education + prestige + women, data = newdata)
summary(mod1)