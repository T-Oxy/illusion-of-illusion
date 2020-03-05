#ムンかー錯視
library(grid)
grid.newpage()
n <- 36
grid.rect(c(1,3)/4, 1/2, 1/2, 1, gp = gpar(col = NA, fill = c("yellow", "blue")))
grid.rect(1/2, c(2,4,6)/8, 1, 1/8, gp = gpar(col = NA, fill = c("green", "white", "red")))
grid.rect(c(1:(n/2-1))/n, 1/2, 1/n/2, 1, gp = gpar(col = NA, fill = c("blue")))
grid.rect(c(n/2+1:(n/2-1))/n, 1/2, 1/n/2, 1, gp = gpar(col = NA, fill = c("yellow")))
