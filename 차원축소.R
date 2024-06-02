library(Rtsne)
library(ggplot2)

ds <- iris[,-5]

# 중복 데이터 제거
dup = which(duplicated(ds))
dup   # 102번째 행과 143번째 행이 같다.
ds <- iris[-dup,]
ds.y <- iris$Species[-dup]

# t-SNE(축소) 실행
tsne <- Rtsne(ds, dims = 2, perplexity = 10)

# 시각화
df.tsne <- data.frame(tsne$Y)
head(df.tsne)

ggplot(df.tsne, aes(x = X1, y = X2, color = ds.y)) +
  geom_point(size = 2)