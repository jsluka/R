b2a <- read.table("a1.txt",header=TRUE)
b2a
#fivenum(): min, Q1, median, Q3, max
#   Note: these are NOT labeled
#mean()
#sd(): sample standard deviation
#var(): sample variance
fivenum(b2a$title1)
mean(b2a$title1)
sd(b2a$title1)
var(b2a$title1)