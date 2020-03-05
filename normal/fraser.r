# フレーザー錯視
library(grid)
library(plyr)
grid.newpage()
n <- 10; ny <- 8; L <- 0.01; c <- seq(0, 1, length = n); d <- 1.2*diff(c)[1]/2
col <- c("black", "white")
x <- c(c-d, c, c+d, c)
y <- rep(c(0, -d, 0, d), each = n)
w <- c(c-d, c-d+L, c+d, c+d-L)
z <- c(0, L, 0, -L)
ys <- seq(0, 1, length = ny)
grid.rect(gp = gpar(fill = gray(0.5), col = NA))
l_ply(1:ny, function(i) {
  if (i%%2==0) {
    co <- rev(col)
    z <- -z
  } else {
    co <- col
  }
  grid.polygon(x, y + ys[i], id = rep(1:n, 4), gp = gpar(fill = co, col = NA))
  grid.polygon(w, rep(z, each = n) + ys[i], id = rep(1:n, 4), gp = gpar(fill = rev(co), col = NA))
})
