iris.new <- iris
iris.new$Species <- as.integer(iris.new$Species)
head(iris.new)
mod_iris <- glm(Species~., data = iris.new)
summary(mod_iris)

unknown <- data.frame(cbind(5.1, 3.5, 1.4, 0.2))
names(unknown) <- names(iris)[1:4]
unknown

pred <- predict(mod_iris, unknown)
pred
round(pred, 0)

pred <- round(pred, 0)
pred
levels(iris$Species)
levels(iris$Species)[pred]