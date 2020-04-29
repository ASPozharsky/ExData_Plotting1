# Plot of global active power

source("read_data.R") #read data

attach(data)

png("plot2.png")
plot(Time, Global_active_power, type="l",
     ylab="Global Active Power (kilowatts)", xlab="")
dev.off()

detach(data)