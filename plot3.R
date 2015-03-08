#PLOT 3
#Settting working directory where the data file is located
setwd("C:/Users/Byron/Documents/Coursera Data Science Sp/Exploratory Data Analysis/ExData_Plotting1")

#Loading filtered data from the file. Just rows corresponding to 1/2/2007 and 2/2/2007
library(sqldf)
data <- read.csv.sql("household_power_consumption.txt",header=TRUE,sep=";",sql="select * from file where Date in('1/2/2007','2/2/2007')")

#Creating the time vector for the graphic.
days <- paste(as.Date(data$Date,"%d/%m/%Y"),data$Time)
days <- strptime(days,"%Y-%m-%d %H:%M:%S")

#Creating the graphic 3
png("plot3.png",width=480,height=480)
plot(days,data$Sub_metering_1,type="l",ylab="Energy sub metering",xlab="")
lines(days,data$Sub_metering_2,col="red")
lines(days,data$Sub_metering_3,col="blue")
legend("topright",lty=c(1,1,1),col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()