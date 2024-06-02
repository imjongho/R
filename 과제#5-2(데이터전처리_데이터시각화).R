# 1 order --> index
state.x77[order(state.x77[,"Population"]), ]
# 2
state.x77[order(state.x77[,"Income"], decreasing = TRUE), ]
# 3
state.x77[order(state.x77[,"Illiteracy"]), ][1:10, ]

