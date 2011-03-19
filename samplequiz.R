
set.seed(42)

l <- sample(100, size = 3)
nl <- sample(100, size = 3)
A <- matrix(c(l, nl), nrow = 2, byrow = TRUE)
colnms <- c("grape", "orange", "cherry")
rownms <- c("likes Obama", "doesn't like Obama")
cindx <- sample(3, size = 2, replace = TRUE)
rindx <- sample(2, size = 2, replace = TRUE)

r <- as.double(sample(3:9, size = 1))
pr <- sample(11:49, size = 1)/100
disxs <- sort(rnbinom(10, size = r, prob = pr))

library(distrEx)
Y <- Nbinom(size = r, prob = pr)

png(filename="plotY.png")
plot(Y, to.draw.arg = "d")

dev.off()

library(distrEx)
E(Y)
var(Y)
