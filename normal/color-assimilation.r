# 色の同化
library(grid)
grid.newpage()
rs <- expand.grid(x = 0:100, y = 0:100)
rs$c <- ifelse(rs$x%%2 == rs$y%%2, "blue", "yellow")
grid.rect(rs$x/100, rs$y/100, 1/100, 1/100, gp = gpar(col = NA, fill=rs$c))
r <- subset(rs, 10 <= x & x <= 40 & 10 <= y & y <= 40 & c == "blue")
grid.rect(r$x/100, r$y/100, 1/100, 1/100, gp = gpar(col = NA, fill="green"))
r <- subset(rs, 60 <= x & x <= 90 & 10 <= y & y <= 40 & c == "yellow")
grid.rect(r$x/100, r$y/100, 1/100, 1/100, gp = gpar(col = NA, fill="green"))
r <- subset(rs, 10 <= x & x <= 40 & 60 <= y & y <= 90 & c == "blue")
grid.rect(r$x/100, r$y/100, 1/100, 1/100, gp = gpar(col = NA, fill="red"))
r <- subset(rs, 60 <= x & x <= 90 & 60 <= y & y <= 90 & c == "yellow")
grid.rect(r$x/100, r$y/100, 1/100, 1/100, gp = gpar(col = NA, fill="red"))
