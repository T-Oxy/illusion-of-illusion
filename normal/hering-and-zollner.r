# ヘリング錯視とツゥエルナー錯視
library(grid)
grid.newpage()
pushViewport(viewport(0.5, 0.75, 1, 0.5, clip=TRUE))
n <- 25; t <- seq(0, pi, length = n)[2:(n-1)]
grid.polyline(2*c(cos(t), cos(t+pi))/2+0.5, 2*c(sin(t), sin(t+pi))/2+0.5, id = rep(1:(n-2), 2))
grid.polyline(c(0,1,0,1), c(1,1,3,3)/4, id=c(1,1,2,2))
popViewport()

pushViewport(viewport(0.5, 0.25, 1, 0.5, clip=TRUE))
n <- 10; a <- 135/180*pi; s <- 0.1
p <- seq(0,1,len=n)
x <- c(p+cos(a)*s, p-cos(a)*s)
y <- c(rep(sin(a), n)*s,rep(-sin(a), n)*s)
grid.polyline(x, y+0.3, id=rep(1:n, 2))
grid.polyline(x, rev(y)+0.7, id=rep(1:n, 2))
grid.polyline(c(0,1,0,1), c(3,3,7,7)/10, id=c(1,1,2,2))
