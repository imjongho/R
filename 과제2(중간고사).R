# 1
head(trees)
# 2
cat("나무 지름(Girth) : 평균값 =", mean(trees$Girth), "중앙값 =", median(trees$Girth), 
    "절사평균값(절사범위:15%) =", mean(trees$Girth, trim = 0.15), 
    "표준편차 =", sd(trees$Girth) , "\n")
# 3
hist(trees$Girth, main = "나무 지름")
# 4
boxplot(trees$Girth, main = "나무 지름")
# 5
cat("나무 높이(Height) : 평균값 =", mean(trees$Height), "중앙값 =", median(trees$Height), 
    "절사평균값(절사범위:15%) =", mean(trees$Height, trim = 0.15), 
    "표준편차 =", sd(trees$Height) , "\n")
# 6
hist(trees$Height, main = "나무 높이")
# 7
boxplot(trees$Height, main = "나무 높이")