food <- read.csv("D:/R/공주대학교/protein.csv")
food[1:3,]
str(food)

grpMeat <- kmeans(food[,c("WhiteMeat", "RedMeat")], centers=3)
grpMeat

o=order(grpMeat$cluster)
data.frame(food$Country[o], grpMeat$cluster[o])

plot(food$Red, food$White, type="n", xlim=c(3,19), xlab="Red Meat", ylab="White Meat")
text(x=food$Red, y=food$White, labels=food$Country, col=grpMeat$cluster+1)


grpProtein <- kmeans(food[,-1], centers=7)
o=order(grpProtein$cluster)
data.frame(food$Country[o], grpProtein$cluster[o])

plot(food$Red, food$White, type="n", xlim=c(3,19), xlab="Red Meat", ylab="White Meat")
text(x=food$Red, y=food$White, labels=food$Country, col=rainbow(7)[grpProtein$cluster])


str(iris)
iris

iris2 <- iris
iris2$Species <- NULL
str(iris2)
head(iris2)

kmeans.result <- kmeans(iris2, 3)
table(iris$Species, kmeans.result$cluster)

par(mfrow=c(1,2), mai=c(1.0, 0.6, 0.5, 0.1))
plot(iris2[c("Sepal.Length", "Sepal.Width")], col = kmeans.result$cluster, main = "Sepal.Width-Sepal.Length")
points(kmeans.result$centers[, c("Sepal.Length", "Sepal.Width")], col = 1:3, pch = 8, cex = 2)
plot(iris2[c("Petal.Length", "Petal.Width")], col = kmeans.result$cluster, main = "Petal.Width-Petal.Length")
points(kmeans.result$centers[, c("Petal.Length", "Petal.Width")], col = 1:3, pch = 8, cex = 2)


idx <- sample(1:dim(iris)[1], 40)
irisSample <- iris[idx,]

irisSample$Species <- NULL
str(irisSample)

hc <- hclust(dist(irisSample), method="ave")
hc

plot(hc, hang=-1, labels=iris$Species[idx])
rect.hclust(hc, k=3)

library(fpc)
iris2 <- iris[-5]
ds <- dbscan(iris2, eps=0.42, MinPts=5)
table(ds$cluster, iris$Species)

plot(ds, iris2)
plot(ds, iris[c(1,4)])





