#PLOT 2
#Settting working directory where the data file is located
setwd("C:/Users/Byron/Documents/Coursera Data Science Sp/Exploratory Data Analysis/ExData_Plotting1")

#Loading filtered data from the file. Just rows corresponding to 1/2/2007 and 2/2/2007
library(sqldf)
data <- read.csv.sql("household_power_consumption.txt",header=TRUE,sep=";",sql="select * from file where Date in('1/2/2007','2/2/2007')")

#Creating the time vector for the graphic.
days <- paste(as.Date(data$Date,"%d/%m/%Y"),data$Time)
days <- strptime(days,"%Y-%m-%d %H:%M:%S")

#Creating the graphic 2
png("plot2.png",width=480,height=480)
plot(days,data$Global_active_power,type="l",ylab="Global Active Power (kilowats)",xlab="")
dev.off()