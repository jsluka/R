b4 <- read.table("b4.txt",header=TRUE)
b4

#If you have more than one category:
#  boxplot(quantitative~group, data=table name, main=,xlab=, ylab=)
#    if the x-axis and y-axis labels are not used, no labels will be written
#If you have only one category:
#  boxplot(table name$quantiative, main=,xlab=, ylab=)
boxplot(score~group,data=b4, main="Sample Boxplot", xlab="Group", ylab="Score")

#if you want to add the location of the mean on the boxplot, you need
#  to add the following 2 lines
#tapply(quantitative, group, function to be performed)
#points: this will plot these values on the current graphical output page
#   pch: type of data point   
means <- tapply(b4$score, b4$group, mean)
points(means,pch=18)
