#연관분석 Grocery Data Set
library(arules)

groceries <- read.transactions(file="D:/R/공주대학교/(R실습)05-연관분석(예제데이터모음)/groceries.csv", format="basket", sep=",")
inspect(groceries)

rules.all <- apriori(groceries)
rules.all
inspect(rules.all)
rules <- apriori(groceries, control = list(verbose=F), parameter = list(minlen=2, supp=0.3, conf=0.9))
rules

quality(rules) <- round(quality(rules), digits = 3)
rules.sorted <- sort(rules, by="confidence")
inspect(rules.sorted)

rules <- apriori(groceries, control = list(verbose=F), parameter = list(minlen=2, supp=0.2, conf=0.8))
rules
quality(rules) <- round(quality(rules), digits = 3)
rules.sorted <- sort(rules, by="lift")
inspect(rules.sorted)

rules <- apriori(groceries, control = list(verbose=F), parameter = list(minlen=2, supp=0.1, conf=0.8), appearance = list(none="shopping bags"))
rules
quality(rules) <- round(quality(rules), digits = 3)
rules.sorted <- sort(rules, by="lift")
inspect(rules.sorted)


#연관분석 Titanic Data Set
load("C:/Program Files/R/R-4.0.2/titanic.raw.rdata")
str(titanic.raw)
head(titanic.raw)
summary(titanic.raw)
rules.all <- apriori(titanic.raw)
rules.all
inspect(rules.all)


rules <- apriori(titanic.raw, control = list(verbose=F), parameter = list(minlen=2, supp=0.005, conf=0.8), 
                 appearance = list(rhs=c("Survived=No", "Survived=Yes"), default="lhs"))
quality(rules) <- round(quality(rules), digits = 3)
rules.sorted <- sort(rules, by="lift")
inspect(rules.sorted)


rules <- apriori(titanic.raw, parameter = list(minlen=3, supp=0.002, conf=0.2), 
                 appearance = list(rhs=c("Survived=No"), lhs=c("Class=1st", "Class=2nd", "Class=3rd", "Age=Child", "Age=Adult"), default="none"),
                 control=list(verbose=F))
rules.sorted <- sort(rules, by="confidence")
inspect(rules.sorted)

