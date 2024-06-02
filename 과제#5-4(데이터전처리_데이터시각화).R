library(treemap)

edu <- c()
for(i in 1:nrow(swiss)){
  if(swiss[i, "Education"] <= 6){
    edu[i] <- "LOW"
  }else if(swiss[i, "Education"] >= 13){
    edu[i] <- "HIGH"
  }else{
    edu[i] <- "MID"
  }
}

# 1
new_swiss <- data.frame(swiss, edu, stname = rownames(swiss))
treemap(new_swiss, index = c("edu", "stname"), vSize = "Fertility", 
        vColor = "Agriculture", type = "value")

# 2
treemap(new_swiss, index = c("stname"), vSize = "Catholic",
        vColor = "Examination", type = "value")

swiss


