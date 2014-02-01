# labels contains the labels for the bars
labels <- paste(gps$Company, sep ="")
 
# I have now defined a variable called plot which includes the output from
# from the bar graph.
#  axes = F, the bar graph doesn't plot the axes, the y-axis is fine; 
#     however, we have to remove both of the axes.
#  axisnames = F, it  also doens't plot the axis labels
plot <- barplot(gps$MarketShare, main="Sample Bar Chart", xlab="Company", 
ylab="Market Share", axes = FALSE, axisnames = FALSE)

# puts the x-axis back in
# plot: the vector coordinates where they should go
# par: the locations are in the 3rd location
# labels: what the labels are 
# srt: string rotation in degrees
# adj: The adjustment of the text: 0: left, 0.5: centered, 1: right
# xpd: all plotting goes on the plot, instead of the device.?
text(plot, par("usr")[3], labels = labels, srt = 45, adj = 1, xpd = TRUE)

#adds the y-axis to the current plot which we removed above. 
# 1: below, 2: left, 3: above, 4: right
axis(2)


