##########################################################################
## Read household_power_consumption.txt for 1 and 2 Feb 2007

library(dplyr)

readpwrdata <- function(){

    df <- read.csv("../data/household_power_consumption.txt", 
            header=FALSE, sep=";", 
            skip=66637, 
            nrows=2880, 
            col.names = c("Date", "Time", "GlobalActivePower", "GlobalReactivePower", "Voltage", "GlobalIntensity", "SubMetering1", "SubMetering2", "SubMetering3"),
            stringsAsFactors = FALSE
            )
    
    # Correct the type for date
    #df$Date <- as.Date(df$Date, format="%d/%m/%Y")
    #df <- within(df, { Timestamp=format(as.POSIXct(paste(Date,Time)), "%d/%m/%Y %H:%M:%S") } )
    df$DateTime <- strptime(paste(df$Date, df$Time), "%d/%m/%Y %H:%M:%S")
    
    select(df, DateTime, GlobalActivePower, GlobalReactivePower, Voltage, GlobalIntensity, SubMetering1, SubMetering2, SubMetering3)
}



