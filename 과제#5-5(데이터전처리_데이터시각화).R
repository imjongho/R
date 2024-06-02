symbols(x = swiss$Fertility, y = swiss$Agriculture, 
        circles = swiss$Education, bg = "green", inches = 0.6,
        xlab = "Fertility", ylab = "Agriculture")
text(x = swiss$Fertility, y = swiss$Agriculture,
     labels = rownames(swiss), cex = 0.6, col = "black")

