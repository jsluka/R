garbage <- read.table("garbage.txt",header=T)
garbage

barplot(garbage$Percent, main="Municipal Solid Waste", xlab="Material", ylab="Percent", names.arg=(garbage$Material))

garbage.pareto <- garbage[order(garbage$Percent,decreasing=T), ]
barplot(garbage.pareto$Percent,main="Municipal Solid Waste",xlab="Material",ylab="Percent",names.arg=(garbage$Material))

#Which graph is clearer?

seafish <- read.table("beringseafish.txt",header=T)
seafish

hist(seafish$Runs, main="Bering Sea Fish", xlab="Runs", breaks = seq(15,65,by=1)) 

plot(seafish$Year,seafish$Runs,main="Bering Sea Fish",xlab="Year",ylab="Runs",type="b")

#What different info can be obtained from each?

wells <- read.table("oilwells.txt",header=T)
wells

hist(wells$Recovered, main="Oil Recovered", xlab="Thousands of Barrels", breaks = seq(0,205,by=5))

hist(wells$Recovered, main="Oil Recovered", xlab="Thousands of Barrels", breaks = seq(0,210,by=10))

#MEAN: 
#STANDARD DEVIATION:
#5 NUMBER SUMMARY:
#IQR:

corn <- read.table("corn.txt",header=T)
corn

boxplot(corn,use.cols=TRUE, xlab="Strain", ylab="Weight", main="Chicken weight by corn fed")

#MEAN
#Standard Div
#Is new corn or normal corn better?
