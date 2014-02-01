b2 <- read.table("a1.txt",header=TRUE)
b2

#the hist() command produces histograms. In the following command
#  the first column is the data, main = title for the graph
#  xlab = title for the x axis (if you do not put this in, you will
#         have as a title a1$title1
#  breaks = the break points. R has a reasonable good algorithm for
#          determining the break points, but you can control it better
#          seq: R creates a sequence, with the minimum value of 0, maximum
#               value of 6 and a bin size of 1
hist(b2$title1, main="Sample Histogram", xlab = "Title1",breaks = seq(0,6,by=1))