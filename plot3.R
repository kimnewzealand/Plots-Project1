library(dplyr)
library(lubridate)

# Read in data files and filter for a subset of dates
epc <- read.csv("./household_power_consumption.txt",sep=";",dec=".", stringsAsFactors = FALSE)
epc$datetime <- as.POSIXct(paste(epc$Date, epc$Time), format="%d/%m/%Y %H:%M:%S") # new combined datetime column
epc$Date<- as.Date(epc$Date,format = "%d/%m/%Y")

epc2 <- epc %>% filter(Date>="2007-02-01"& Date<="2007-02-02") #filter for 2007-02-01 to 2007-02-02
epc2[,3:9] <- lapply(epc2[,3:9],FUN=as.numeric) # change the non-Date non-Time col classses to numeric
grep("\\?",epc2) # there are no ?'s as missing values in the dataset

## Plot 3 
plot3 <-with(epc2,(plot( epc2$datetime,epc2$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")))
lines(epc2$datetime,epc2$Sub_metering_2,type="l",sub = "Sub_metering_1",col="red")
lines(epc2$datetime,epc2$Sub_metering_3,type="l",sub = "Sub_metering_1",col="blue")
legend("topright",30,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1:3,cex=0.5)

dev.copy(png,file = "plot3.png", width=480,height=480) # Print plot3 to png file
dev.off()