# 明るさの対比
library(grid)
grid.newpage()
grid.rect(c(1,3,1,3)/4, c(3,3,1,1)/4, 1/2, 1/2, gp = gpar(col = NA, fill = gray(1:4/5)))
grid.rect(c(1,3,1,3)/4, c(3,3,1,1)/4, 1/6, 1/6, gp = gpar(col = NA, fill = gray(0.5)))
