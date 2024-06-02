library(mlbench)
data("Sonar")
# head(Sonar)
new_Sonar <- Sonar[complete.cases(Sonar), ]   # 결측값 제거

tr.idx <- seq(1, nrow(new_Sonar), 2)
ds.tr <- new_Sonar[tr.idx, 1:60]
ds.ts <- new_Sonar[-tr.idx, 1:60]
cl.tr <- new_Sonar[tr.idx, 61]
cl.ts <- new_Sonar[-tr.idx, 61]

library(class)
pred3 <- knn(ds.tr, ds.ts, cl.tr, k = 3, prob = TRUE)
acc3 <- mean(pred3==cl.ts)
acc3

pred5 <- knn(ds.tr, ds.ts, cl.tr, k = 5, prob = TRUE)
acc5 <- mean(pred5==cl.ts)
acc5

pred7 <- knn(ds.tr, ds.ts, cl.tr, k = 7, prob = TRUE)
acc7 <- mean(pred7==cl.ts)
acc7


