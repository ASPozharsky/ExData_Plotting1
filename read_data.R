# Script for reading data 
datafile <- "household_power_consumption.txt"

data <- read.table(datafile, header=TRUE, sep=";", na.strings="?")
data$Date <- as.Date(data$Date, tryFormats = "%d/%m/%Y")
data <- subset(data, Date %in% as.Date(c("2007-02-01", "2007-02-02")))
data$Time <- strptime(paste(data$Date, data$Time), format="%Y-%m-%d %H:%M:%S")


