# Scintillating lustre induced by radial fins
library(grid)
nt <- 41; br <- 0.2
col1 <- c("black", "white")

f <- function(x0, y0) {
  r <- embed(c(1, 0.2), 2)
  t <- embed(seq(0, 2*pi, length=nt), 2)
  i <- as.matrix(expand.grid(1:nrow(r), 1:nrow(t)))

  p <- t(apply(i, 1, function(x) c(r[x[1], ], t[x[2], ])))
  x <- c(p[,1]*cos(p[,3]), p[,1]*cos(p[,4]), p[,2]*cos(p[,4]), p[,2]*cos(p[,3]))
  y <- c(p[,1]*sin(p[,3]), p[,1]*sin(p[,4]), p[,2]*sin(p[,4]), p[,2]*sin(p[,3]))
  grid.polygon(x0+x/2, y0+y/2, id = rep.int(1:nrow(p), 4),
               gp = gpar(fill = col1, col=NA), default.units="native")
}

grid.newpage()
pushViewport(viewport(xscale = c(0, 3), yscale = c(0, 3)))
for (x0 in 0.5+0:2) for (y0 in 0.5+0:2) f(x0, y0)
