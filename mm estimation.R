require(MASS)
require(robustbase)
library(readxl)
data <- read_excel("D:/data.xlsx")
View(data)
cpu.mod1 = lm(Y ~ X1 + X2 + X3, data = data); cpu.mod1
summary(cpu.mod1)
lm(formula = Y ~ X1 + X2 + X3, data = data)

cpu.robmod1 = lmrob(Y ~ X1 + X2 + X3, data = data, control = lmrob.control(max.it = 100))
summary(cpu.robmod1)
