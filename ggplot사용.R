library(ggplot2)

airmiles
year <- c(1937:1960)
cnt <- as.vector(airmiles)
df <- data.frame(year, cnt)
ggplot(data = df, aes(x = year, y = cnt)) +
  geom_line(col = "red")


ggplot(data = iris, aes(x = Petal.Length, y = Petal.Width, color = Species)) +
  geom_point(size = 2) +
  ggtitle("²ÉÀÙÀÇ ±æÀÌ¿Í Æø") +
  theme(plot.title = element_text(size = 25, face = "bold", color = "purple"))


iris
ggplot(iris, aes(x = Sepal.Width, fill = Species)) +
  geom_histogram(binwidth = 0.5, position = "dodge")


month <- c(1, 2, 3, 4, 5, 6)
rain <- c(55, 50, 45, 60, 20, 30)
df <- data.frame(month, rain)
df

ggplot(df, aes(x = month, y = rain)) +
  geom_bar(stat = "identity", width = 0.7, fill = "red") +
  labs(x = "¿ù", y = "°­¼ö·®") +
  coord_flip()