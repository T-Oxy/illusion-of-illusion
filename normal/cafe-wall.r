# カフェウォール錯視
library(grid)
grid.newpage()
rs <- expand.grid(x = seq(0, 1, 1/10), y = seq(0, 1, 1/10))
grid.rect(rs$x, rs$y, 1/10/2, 1/10/2, gp = gpar(fill = "black", col = NA))
grid.rect(rs$x + 1/10/4, rs$y + 1/10/2, 1/10/2, 1/10/2, gp = gpar(fill = "black", col = NA))
ls <- expand.grid(x = 0:1, y = seq(0, 1, 1/20) - 1/20/2)
grid.polyline(ls$x, ls$y, id = gl(nrow(ls)/2, 2), gp = gpar(col = "grey50", lwd = 1))
