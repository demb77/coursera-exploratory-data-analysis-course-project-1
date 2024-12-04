file_name <- "household_power_consumption.txt"
data <- read.table(file_name, header = TRUE, sep = ";", dec = ".", na.strings = "?")
##Subset data from the dates 2007-02-01 and 2007-02-02

data <- data[data$Date %in% c("1/2/2007","2/2/2007"), ]
##Plot the histogram plot

hist(data[, 3], col = "red", main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)")
dev.off()