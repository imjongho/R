set.seed(100)
index <- sample(1:50, size = 10, replace = FALSE)

setosa <- subset(iris, Species == "setosa")
versicolor <- subset(iris, Species == "versicolor")
virginica <- subset(iris, Species == "virginica")

iris.10 <- rbind(setosa[index, ], versicolor[index, ], virginica[index, ])
iris.10
