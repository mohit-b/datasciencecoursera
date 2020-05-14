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

y <- data.frame(a = 1, b = "a")
y
dput(y)
dput(y, file = "y.R")
new.y <- dget("y.R")
new.y


x <- "foo"
y <- data.frame(a = 1L, b = "a")
dump(c("x", "y"), file = "data.R")
rm(x, y)
source("data.R")
str(y)
y
x


str(file)


con <- url("http://www.jhsph.edu", "r")
x <- readLines(con)
head(x)
x


x <- list(foo = 1:4, bar = 0.6)
x[1]
x[[1]]

x <- list(foo = 1:4, bar = 0.6, baz = "hello")
x[c(3,1)]
x[c('foo','baz')]
x[2]
x[[c(3)]]

x <- list(a = list(10, 12, 14), b = c(3.14, 2.81))
x[[c(1, 3)]]

 x <- matrix(1:6, 2, 3)
 x
 x[1, 2]
 x[1, ]
 x[, 2]
 x[1, 2,drop=FALSE]
 x[1, ,drop=FALSE]


x <- list(aardvark = 1:5)
x$aa
x[["a"]]
x[["aa", exact = FALSE]]


x <- c(1, 2, NA, 4, NA, 5)
bad <- is.na(x)
bad
x[!bad]


x <- c(1, NA, NA, 4, NA, 5)
y <- c("a", "b", NA, "d", NA, "f")
good <- complete.cases(x, y)
good
x[good]


head(airquality)
good <- complete.cases(airquality)
head(airquality[good, ])


x <- 1:4
y <- 6:9
z <- x + y
z


x <- matrix(1:4, 2, 2)
y <- matrix(rep(10, 4), 2, 2)
x*y
x %*% y #true matrix multiplication


x <- 4L
class(x)
x <- c(4, "a", TRUE)
class(x)


x <- c(1,3, 5) 
y <- c(3, 2, 10)
cbind(x, y)
class(cbind(x, y))

x <- list(2, "a", "b", TRUE)
class(x[[2]] )

x <- 1:4
y <- 2
x+y

x <- c(3, 5, 1, 10, 12, 6)

x[x < 6] <- 0
x
x[x != 6] <- 0
x
x[x == 6] <- 0
x
x[x < 6] == 0
x
x[x >= 6] <- 0
x
x[x > 0] <- 6
x
x[x == 0] < 6
x
x[x > 6] <- 0
x
x[x <= 5] <- 0
x
x[x == 0] <- 6
x
x[x %in% 1:5] <- 0
x

x <- c(1,3, 5)
y <- c(3, 2, 10)
rbind(x,y)

x <- list(2, "a", "b", TRUE)
class(x[[1]])

x <- 1:4 
y <- 2:3
class(x+y)

x <- c(17, 14, 4, 5, 13, 12, 10)


library(readr)
q <- read_csv("hw1_data.csv")
View(q)
p<-complete.cases(q['Ozone']>31,q['Temp']>90,q['Solar.R'])
dim(p)<-c(153,1)
w<-q['Solar.R'][q['Ozone']>31]
dim(w)<=c(58,1)

mean(q['Solar.R'][p])
