s77 <- as.data.frame(state.x77[,c("Murder", "Illiteracy")])
plot(Murder~Illiteracy, data = s77)
model <- lm(Murder~Illiteracy, s77)

model
abline(model)

b <- coef(model)[1]
W <- coef(model)[2]

for(i in 1:3){
  Illiteracy <- 0.5 * i
  Murder <- W * Illiteracy + b
  cat('���ͷ�(��������) :', Illiteracy, '������(���Ӻ���) :', Murder, '\n')
}


