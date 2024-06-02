tree <- as.data.frame(trees[,c("Girth", "Volume")])
plot(Volume~Girth, data = tree)
model <- lm(Volume~Girth, tree)

model
abline(model)

b <- coef(model)[1]
W <- coef(model)[2]

for(i in 1:3){
  Girth <- 8 + 0.5 * i
  Volume <- W * Girth + b
  cat('나무둘레(독립변수) :', Girth, '나무볼륨(종속변수) :', Volume, '\n')
}