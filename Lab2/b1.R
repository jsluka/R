#read in the file
gps <- read.table("gps.txt", header=T)

#print out the file to be sure that it is correct
gps

#bar chart
#the command to make a bar chart is barplot
#  the first item is the quantitative variable
#  keywords: main = the main title
#            xlab = label for x axis, ylab = label for y axis
#            names.arg = the labels for each of the columns
barplot(gps$MarketShare, main="Sample Bar Chart",xlab="Company", 
   ylab="MarketShare", names.arg=(gps$Company))

#to open a new device for the next plot
dev.new()

#pareto chart
#The order command orders the column, we want it to be decreasing
#Be sure to always order the columns inside of the variable, otherwise
#   it will only order the column that is listed and not rearrange the
#   the other one.
gps.pareto <- gps[order(gps$MarketShare,decreasing=T) ,]
barplot(gps.pareto$MarketShare, main="Sample Pareto Chart",xlab="Company", 
   ylab="MarketShare", names.arg=(gps.pareto$Company))

