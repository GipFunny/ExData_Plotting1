#############################################################################
# Generate the first plot.

# Include the function to read the data
source("read_hpc_feb.R")

plot1 <- function() {
    
    df <- readpwrdata();
    
    png("plot1.png")
    
    hist(df$GlobalActivePower, col="red", ylab="Frequency", xlab="Global Active Power (kilowatts)", main="Global Active Power")
    
    dev.off()
}