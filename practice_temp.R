y<-1:5

x<-list(1:5,y,2:10,3,TRUE,FALSE,c('a','b'))
x

x <- factor(c("yes", "yes", "no", "yes", "no"))
table(x)
unclass(x)
attributes("levels")
x <- factor(c("yes", "yes", "no", "yes", "no"),c("yes","no"))
table(x)
unclass(x)

x <- data.frame(foo = 1:4, bar = c(T, T, F, F))
x
data.matrix(x)

x <- list('Los Angeles' = 1, Boston = 2, London = 3)
x

m <- matrix(1:4, nrow = 2, ncol = 2)
dimnames(m) <- list(c("a", "b"), c("c", "d"))
m
colnames(m) <- c("h", "f")
m
rownames(m) <- c("x", "z")
m

