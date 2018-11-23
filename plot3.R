#############################################################################
# Generate the first plot.

# Include the function to read the data
source("read_hpc_feb.R")

plot3 <- function() {
    
    df <- readpwrdata();
    
    png("plot3.png")
    
    plot(x=df$DateTime, y=df$SubMetering1, type="l", ylab="Energy sub metering", xlab="")
    lines(x=df$DateTime, y=df$SubMetering2, type="l", col="red")
    lines(x=df$DateTime, y=df$SubMetering3, type="l", col="blue")
    legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lwd=c(1,1,1))
    
    dev.off()
}
