# きらめき格子錯視
library(grid)
nx <- 6; ny <- 6; lwd <- 10; cr <- 1/100
grid.newpage()
grid.rect(0.5, 0.5, 1, 1, gp = gpar(fill = "black"))
ls <- expand.grid(x = 0:1, y = seq(0, 1, 1/nx/2) - 1/nx/2/2)
grid.polyline(ls$x, ls$y, id = gl(nrow(ls)/2, 2), gp = gpar(col = "grey", lwd = lwd))
ls <- expand.grid(y = 0:1, x = seq(0, 1, 1/ny/2) - 1/ny/2/2)
grid.polyline(ls$x, ls$y, id = gl(nrow(ls)/2, 2), gp = gpar(col = "grey", lwd = lwd))
ls <- expand.grid(x = seq(0, 1, 1/nx/2) - 1/nx/2/2, y = seq(0, 1, 1/ny/2) - 1/ny/2/2)
grid.circle(ls$x, ls$y, r= cr, gp = gpar(col = NA, fill = "white"))
