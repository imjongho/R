# 1
score <- c(90, 85, 73, 80, 85, 65, 78, 50, 68, 96)
names(score) <- c("KOR", "ENG", "ATH", "HIST", "SOC", "MUSIC", "BIO", "EARTH", "PHY", "ART")
# 2
score
# 3
cat("평균 =", mean(score), "중앙값 =", median(score), "\n")
# 4
cat("표준편차 =", sd(score), "\n")
# 5
names(score[which.max(score)])
# 6 이상치(특이값) 없음
boxplot(score, main = "학생 성적")
# 7
hist(score, main = "학생 성적", col = "purple")





