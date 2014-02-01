#I am assuming that your file is in the main directory of your H drive
#read.table() reads in data from a file
#  when we use the files from StatsPortal, you also need to tell R that 
#     the first line is a header
a2 <- read.table("H:/a1.txt",header=TRUE)

#to print the data for each data set (matrix), just type the variable name
# note: the first column will be the observation number which is 
#   automatically added in R
a2