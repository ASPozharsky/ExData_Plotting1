# Plot of three sub-meterings

source("read_data.R") # read data

attach(data)            

png("plot3.png")
plot(Time, Sub_metering_1, type="l",
     ylab="Energy sub metering", xlab="")
lines(Time, Sub_metering_2, col="orangered")
lines(Time, Sub_metering_3, col="blue")
legend("topright", legend=c(paste("Sub_metering", 1:3, sep="_")),
       col=c("black", "orangered", "blue"), lty=1)
dev.off()

detach(data)