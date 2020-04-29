# Histogram of global active power

source("read_data.R")   # read data

png("plot1.png")
hist(data$Global_active_power, col="orangered",
     main ="Global Active Power", 
     xlab="Global Active Power (kilowatts)",
     ylab="Frequency")
dev.off()
