# 明るさの対比
library(grid)
grid.newpage()
selfvector <- function () {
  vec <- readline("適当なベクトルを入力(,で区切り) : ")
  as.numeric(unlist(strsplit(vec, ",")))
}
x1 <- selfvector()
y1 <- selfvector()
color1 <- selfvector()
color2 <- as.numeric(readline("適当な数値を入力:"))
grid.rect(x1, y1, 1/2, 1/2, gp = gpar(col = NA, fill = gray(color1)))
grid.rect(x1, y1, 1/6, 1/6, gp = gpar(col = NA, fill = gray(0.5)))
