score <- c(77.5, 60, 50, 95, 55, 85, 72.5, 80, 92.5, 87.5)
tv_time <- c(14, 10, 20, 7, 25, 9, 15, 13, 4, 21)
# 산점도 구하기
plot(score, tv_time, main = "성적-주당 tv 시청시간 그래프", col = "red", pch = 19)
# 상관계수 구하기
cor(score, tv_time)
# 상관계수 r이 -0.6283671이므로 음의 상관관계(r < 0)이다. 
# 이는, 성적이 증가할수록 tv시청시간이 감소하는 관계(반비례)이다.
# 그리고, -0.63은 -1에 가깝기 때문에 두 변수 사이의 상관성이 상당히 높다고 말할 수 있다.