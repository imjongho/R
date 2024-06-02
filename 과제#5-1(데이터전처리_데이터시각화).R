ds <- state.x77
ds[2,3] <- NA; ds[3,1] <- NA; ds[2,4] <- NA; ds[4,3] <- NA

# 1
colSums(is.na(ds))
# 2
ds[!complete.cases(ds), ]
# 3
sum(rowSums(is.na(ds)) > 0)
# 4
ds.new <- ds[complete.cases(ds), ]
head(ds.new)