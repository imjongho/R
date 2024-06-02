# 1
setwd("D:/source_R/1학년 2학기/파일 데이터")
st <- subset(data.frame(state.x77), Income >= 5000)[,c("Income", "Population", "Area")]
write.csv(st, "rich_state.csv", row.names = T)

# 2
ds <- read.csv("rich_state.csv", header = T)
ds


