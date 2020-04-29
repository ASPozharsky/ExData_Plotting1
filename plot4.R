# Four panel plot

source("read_data.R") # read data

attach(data)

png("plot4.png")
par(mfrow=c(2,2))
        # Plot 1
plot(Time, Global_active_power, type="l",
     ylab="Global Active Power (kilowatts)", xlab="")
        # Plot 2
plot(Time, Voltage, type="l", ylab="Voltage", xlab="datetime")
        # Plot 3
plot(Time, Sub_metering_1, type="l",
     ylab="Energy sub metering", xlab="")
lines(Time, Sub_metering_2, col="orangered")
lines(Time, Sub_metering_3, col="blue")
legend("topright", legend=c(paste("Sub_metering", 1:3, sep="_")),
       col=c("black", "orangered", "blue"), lty=1, bty="n")
        # Plot 4
plot(Time, Global_reactive_power, type="l",
     ylab="Global_reactive_power", xlab="datetime")
dev.off()

detach(data)

