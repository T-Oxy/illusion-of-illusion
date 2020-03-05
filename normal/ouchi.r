# オオウチ錯視
library(grid)
grid.newpage()
nx <- 10; ny <- 30
rs <- expand.grid(x = seq(0, 1, 1/nx/2), y = seq(0, 1, 1/ny/2))
grid.rect(rs$x, rs$y, 1/nx/2, 1/ny/2, gp = gpar(col = NA, fill = c("black", "white")))
rs <- expand.grid(x = seq(0.25, 0.75, 1/nx/2), y = seq(0.25, 0.75, 1/ny/2))
grid.rect(rs$y, rs$x, 1/ny/2, 1/nx/2, gp = gpar(col = NA, fill = c("black", "white")))
