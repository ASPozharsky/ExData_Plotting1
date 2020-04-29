# Plot of three sub-meterings

source("read_data.R") # read data

attach(data)            

png("plot3.png")
plot(Sub_metering_1, type="l", xaxt="n",
     ylab="Energy sub metering", xlab="")
lines(Sub_metering_2, col="orangered")
lines(Sub_metering_3, col="blue")
axis(1, at = c(1, nrow(data)/2, nrow(data)), 
     labels=c("Thu", "Fri", "Sat"))
legend("topright", legend=c(paste("Sub_metering", 1:3, sep="_")),
       col=c("black", "orangered", "blue"), lty=1)
dev.off()

detach(data)