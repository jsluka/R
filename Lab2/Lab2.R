garbage <- read.table("garbage.txt",header=T)
garbage

barplot(garbage$Percent, main="Municipal Solid Waste", xlab="Material", ylab="Percent", names.arg=(garbage$Material))

garbage.pareto <- garbage[order(garbage$Percent,decreasing=T), ]
barplot(garbage.pareto$Percent,main="Municipal Solid Waste",xlab="Material",ylab="Percent",names.arg=(garbage$Material))

# QUESTION: Which graph is clearer?
# ANSWER: In my opinion, the pareto plot is clearer than the regular barplot. 
#	The reason for this is that it makes it easier for the viewer to read
#	all of the data and organize it in a manner that is consistent with 
#	human thought.

seafish <- read.table("beringseafish.txt",header=T)
seafish

hist(seafish$Runs, main="Bering Sea Fish", xlab="Runs", breaks = seq(15,65,by=1)) 

plot(seafish$Year,seafish$Runs,main="Bering Sea Fish",xlab="Year",ylab="Runs",type="b")

# QUESTION: What different info can be obtained from each?
# ANSWER: The histogram provides only information on the number of runs of a
#	given size. This information is useful when determining how big to build
#	a boat, but not for much else. The plot gives the viewer information on
#	the trend of run sizes over time, which can be used to make predictions
#	for coming years.

wells <- read.table("oilwells.txt",header=T)
wells

hist(wells$Recovered, main="Oil Recovered", xlab="Thousands of Barrels", breaks = seq(0,205,by=5))

hist(wells$Recovered, main="Oil Recovered", xlab="Thousands of Barrels", breaks = seq(0,210,by=10))

m <- mean(wells$Recovered)
m
s <- sd(wells$Recovered)
s
f <- fivenum(wells$Recovered)
f
i <- IQR(wells$Recovered)
i

# QUESTION: Which histogram is better?
# ANSWER: That depends on what you're trying to do. If you're building an oil
#	derrick and you need to know what spec to build it to, the usefulness of
#	the graph is solely dependent on how fine of control you'd have over the
#	rig. In my opinion, my first graph (groups of 5) provides better
#	information.
# MEAN: 48.26406
# STANDARD DEVIATION: 40.2346
# 5 NUMBER SUMMARY: 2.0, 21.5, 37.8, 60.1, 204.9
# IQR: 37.85

corn <- read.table("corn.txt",header=T)
corn

boxplot(corn,use.cols=TRUE, xlab="Strain", ylab="Weight", main="Chicken weight by corn fed")

mo <- mean(corn$Normal)
me <- mean(corn$New)
so <- sd(corn$Normal)
se <- sd(corn$New)
mo
me
so
se

# MEAN: 
#	NORMAL: 366.3
#	NEW: 402.8
# STANDARD DEVIATION:
#	NORMAL: 50.8052
#	NEW: 42.64863
# QUESTION:Is new corn or normal corn better?
# ANSWER: Based on the data presesnt, it seems to me that the new strain of
#	corn is better than the normal (old) strain.
