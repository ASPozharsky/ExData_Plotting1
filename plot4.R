# Four panel plot

source("read_data.R") # read data

attach(data)

png("plot4.png")
par(mfrow=c(2,2))
        # Plot 1
plot(Global_active_power, type="l", xaxt="n",
     ylab="Global Active Power (kilowatts)", xlab="")
axis(1, at = c(1, nrow(data)/2, nrow(data)), 
     labels=c("Thu", "Fri", "Sat"))
        # Plot 2
plot(Voltage, type="l", xaxt="n", ylab="Voltage", xlab="datetime")
axis(1, at = c(1, nrow(data)/2, nrow(data)), 
     labels=c("Thu", "Fri", "Sat"))
        # Plot 3
plot(Sub_metering_1, type="l", xaxt="n",
     ylab="Energy sub metering", xlab="")
lines(Sub_metering_2, col="orangered")
lines(Sub_metering_3, col="blue")
axis(1, at = c(1, nrow(data)/2, nrow(data)), 
     labels=c("Thu", "Fri", "Sat"))
legend("topright", legend=c(paste("Sub_metering", 1:3, sep="_")),
       col=c("black", "orangered", "blue"), lty=1, bty="n")
        # Plot 4
plot(Global_reactive_power, type="l", xaxt="n",
     ylab="Global_reactive_power", xlab="datetime")
axis(1, at = c(1, nrow(data)/2, nrow(data)), 
     labels=c("Thu", "Fri", "Sat"))
dev.off()

detach(data)

