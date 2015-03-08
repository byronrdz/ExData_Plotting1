#PLOT 1
#Settting working directory where the data file is located
setwd("C:/Users/Byron/Documents/Coursera Data Science Sp/Exploratory Data Analysis/ExData_Plotting1")

#Loading filtered data from the file. Just rows corresponding to 1/2/2007 and 2/2/2007
library(sqldf)
data <- read.csv.sql("household_power_consumption.txt",header=TRUE,sep=";",sql="select * from file where Date in('1/2/2007','2/2/2007')")

#Creating the histogram 1
png("plot1.png",width=480,height=480)
hist(data$Global_active_power,xlab="Global Active Power (kilowats)",main="Global Active Power",col="#ff0000")
dev.off()