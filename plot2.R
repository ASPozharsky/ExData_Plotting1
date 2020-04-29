# Plot of global active power

source("read_data.R") #read data

png("plot2.png")
plot(data$Global_active_power, type="l", xaxt="n",
     ylab="Global Active Power (kilowatts)", xlab="")
axis(1, at = c(1, nrow(data)/2, nrow(data)), 
     labels=c("Thu", "Fri", "Sat"))
dev.off()
     