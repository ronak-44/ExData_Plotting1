
file="C:\\Users\\ADMIN\\Desktop\\ronak\\household_power_consumption.txt"
data <- read.table(file, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

data<-data[data$Date %in% c("1/2/2007","2/2/2007") ,]

png("C:\\Users\\ADMIN\\Desktop\\ronak\\plot1.png", width=480, height=480)
hist(as.numeric(data$Global_active_power), col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()