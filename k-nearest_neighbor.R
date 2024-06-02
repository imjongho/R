library(class)

tr_idx <- c(1:25, 51:75, 101:125)
ds_tr <- iris[tr_idx, 1:4]
ds_ts <- iris[-tr_idx, 1:4]
cl_tr <- factor(iris[tr_idx, 5])
cl_ts <- factor(iris[-tr_idx, 5])

pred <- knn(ds_tr, ds_ts, cl_tr, k = 3, prob = TRUE)
pred

acc <- mean(pred == cl_ts)
acc

table(pred, cl_ts)