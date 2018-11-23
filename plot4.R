#############################################################################
# Generate the first plot.

# Include the function to read the data
source("read_hpc_feb.R")

plot4 <- function() {
    
    df <- readpwrdata()
    
    png("plot4.png")
    
    par(mfcol=c(2,2))
    
    plot(x=df$DateTime, y=df$GlobalActivePower, type="l", ylab="Global Active Power", xlab="")
    
    plot(x=df$DateTime, y=df$SubMetering1, type="l", ylab="Energy sub metering", xlab="")
    lines(x=df$DateTime, y=df$SubMetering2, type="l", col="red")
    lines(x=df$DateTime, y=df$SubMetering3, type="l", col="blue")
    legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lwd=c(1,1,1), bty="n")
    
    plot(x=df$DateTime, y=df$Voltage, type="l", ylab="Voltage", xlab="datetime")
    
    plot(x=df$DateTime, y=df$GlobalReactivePower, ylab="Global_reactive_power", xlab="datetime", type="l")
    
    dev.off()
}
