std <- function(X){
  return((X-min(X)) / (max(X)-min(X)))
}

mydata <- apply(iris[, 1:4], 2, std)

fit <- kmeans(x = mydata, centers = 3)
fit
fit$cluster
fit$centers

library(cluster)
clusplot(mydata, fit$cluster, color = TRUE, labels = 2, lines = 0)

subset(mydata, fit$cluster == 2)