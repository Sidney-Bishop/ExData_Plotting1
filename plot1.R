
# Load the data from the file
# Label missing data using "?" symbol
# Set the column names
# 
data <- read.table(file = "household_power_consumption.txt",sep = ";",colClasses = "character",
                     col.names = colnames(read.table("household_power_consumption.txt", nrow = 1,   header = TRUE, sep=";")),
                     na.strings = "?",
                     skip = 66637,
                     nrows = 2880
                     )

strptime(paste(data$Date,data$Time, sep=" "), format="%d/%m/%Y %H:%M:%S")


jason <- as.numeric(data$Global_active_power)

hist(jason,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")


