file_location <- "./household_power_consumption.txt"
reading_Data <- read.table(file_location, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- reading_Data[reading_Data$Date %in% c("1/2/2007","2/2/2007") ,]
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()