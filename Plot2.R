##script for first assignment Plot2

dataFile <- "./Rcoursera/household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
DataSubset <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(DataSubset$Date, DataSubset$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalactivePower <- as.numeric(DataSubset$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalactivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()

