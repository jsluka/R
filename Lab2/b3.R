
rainfall <- read.table("TotalRainfall.txt",header=TRUE,sep="\t")
rainfall
# the plot command creates a scatter plot
#  plot (x,y,main=,xlab=,ylab=,type=)
#   for the type keyword: l: lines p: points, b: both lines and points
plot(rainfall$Season,rainfall$Total.Rainfall..in.,main="Sample Time Plot", 
xlab = "Time(years)", ylab = "Total Rainfall", type="b")
