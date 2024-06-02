library(cvTools)

k = 10
folds <- cvFolds(nrow(iris), K = k)

acc <- c()
for( i in 1:k){
  ts_idx <- folds$which == i
  ds_tr <- iris[-ts_idx, 1:4]
  ds_ts <- iris[ts_idx, 1:4]
  cl_tr <- factor(iris[-ts_idx, 5])
  cl_ts <- factor(iris[ts_idx, 5])
  
  pred <- knn(ds_tr, ds_ts, cl_tr, k = 5)
  acc[i] <- mean(pred == cl_ts)
}

acc
mean(acc)