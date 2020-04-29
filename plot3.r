
file="C:\\Users\\ADMIN\\Desktop\\ronak\\household_power_consumption.txt"
data <- read.table(file, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

data<-data[data$Date %in% c("1/2/2007","2/2/2007") ,]
date_time <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("C:\\Users\\ADMIN\\Desktop\\ronak\\plot3.png", width=480, height=480)


plot(date_time,as.numeric(data$Sub_metering_1) ,ylab="Energy Submetering", xlab="",col="black")
lines(date_time,as.numeric(data$Sub_metering_2),col="red")
lines(date_time,as.numeric(data$Sub_metering_3),col="blue")
legend("topright",lwd=2,col=c("black","red","blue"),legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))


dev.off()