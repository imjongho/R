std <- function(X){
  return((X-min(X)) / (max(X)-min(X)))
}

mydata <- apply(state.x77[,1:8], 2, std)

fit <- kmeans(x = mydata, centers = 5)
fit$cluster
fit$centers

library(cluster)
clusplot(mydata, fit$cluster, color = TRUE, labels = 2, lines = 0)
