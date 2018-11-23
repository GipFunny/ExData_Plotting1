#############################################################################
# Generate the first plot.

# Include the function to read the data
source("read_hpc_feb.R")


plot2 <- function() {
    
    df <- readpwrdata();
    
    png("plot2.png")
    plot(x=df$DateTime, y=df$GlobalActivePower, type="l", ylab="Global Active Power (kilowatts)", xlab="")
    dev.off()
}
