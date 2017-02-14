##Exploratory Data Analysis in R
##Week 1: Assignment 1
##Md Hossain 
# Plot 1:
# Loading the Data and reading the file
if(!file.exists("getdata-projectfiles-UCI HAR Dataset.zip")) {
  tmp <- tempfile()
  download.file("http://d396qusza40orc.cloudfront.net/repdata%2Fdata%2Factivity.zip",tmp)
  unzip(tmp)
  unlink(tmp)
}
df <- read.csv("activity.csv")
#Reading, naming and subsetting power consumption data
power <- read.table("household_power_consumption.txt",skip=1,sep=";")
names(power) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
subpower <- subset(power,power$Date=="1/2/2007" | power$Date =="2/2/2007")

#calling the basic plot function
hist(as.numeric(as.character(subpower$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")
# annotating graph
title(main="Global Active Power")
