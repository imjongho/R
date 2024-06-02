# (1) pp 28~29
library(mlbench)
data("BostonHousing")
myds <- BostonHousing[,c("crim", "rm", "dis", "tax", "medv")]

# (2) pp 30
grp <- c()
for(i in 1:nrow(myds)){
  if(myds$medv[i] >= 25.0){
    grp[i] <- "H"
  }else if(myds$medv[i] <= 17.0){
    grp[i] <- "L"
  }else{
    grp[i] <- "M"
  }
}

grp <- factor(grp, levels = c("H", "M", "L"))
myds <- data.frame(myds, grp)

# (3) pp 31
str(myds)
head(myds)
table(myds$grp)

# (4) pp 32
par(mfrow = c(2,3))   # 2*3 가상화면 분할
for(i in 1:5){
  hist(myds[,i], main = colnames(myds)[i], col = "yellow")
}
par(mfrow = c(1,1))   # 2*3 가상화면 분할 해제

# (5) pp 33
par(mfrow = c(2,3))
for(i in 1:5){
  boxplot(myds[,i], main = colnames(myds)[i])
}
par(mfrow = c(1,1))

# (6) pp 34~35
boxplot(myds$crim~myds$grp, main = "1인당 범죄율")
boxplot(myds$rm~myds$grp, main = "방의 개수")

# (7) pp 36
pairs(myds[,-6])

# (8) pp 37
point <- as.integer(myds$grp)
color <- c("red", "green", "blue")
pairs(myds[,-6], pch = point, col = color[point])

# (9) pp 38 fin
cor(myds[,-6])


