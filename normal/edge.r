#エッジの錯視
library(grid)
library(plyr)
grid.newpage()
nx <- 6; ny <- 6
an <- c(1, -1, 1, 1, -1, 1, -1, -1, 1, -1, 1, 1)
rs <- expand.grid(x = seq(0, 1, 1/nx/2), y = seq(0, 1, 1/ny/2))
grid.rect(rs$x, rs$y, 1/nx/2, 1/ny/2, gp = gpar(col = NA, fill = c("black", "white")))
rs <- expand.grid(x = seq(1/nx/2, 1, 1/nx/2) - 1/nx/4, y = seq(1/ny/2, 1, 1/ny/2) - 1/ny/4)
rs$an <- c(an, -an)
l_ply(1:nrow(rs), function(i) {
  pushViewport(viewport(rs$x[i], rs$y[i], 1/30, 1/30, angle = rs$an[i]*45))
  grid.rect(c(1,3,1,3)/4, c(3,3,1,1)/4, 1/2, 1/2, gp = gpar(col = NA, fill = gray(c(0,1,1,0))))
  popViewport()
})
