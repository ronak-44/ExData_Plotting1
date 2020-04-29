
file="C:\\Users\\ADMIN\\Desktop\\ronak\\household_power_consumption.txt"
data <- read.table(file, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

data<-data[data$Date %in% c("1/2/2007","2/2/2007") ,]
date_time <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("C:\\Users\\ADMIN\\Desktop\\ronak\\plot2.png", width=480, height=480)

plot(date_time,as.numeric(data$Global_active_power),type="l", ylab="Global Active Power(kilowatts)")
dev.off()