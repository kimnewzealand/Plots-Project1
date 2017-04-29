## Plot 4
par(mfrow=c(2,2))
plot4_1 <-with(epc2,(plot( epc2$datetime,epc2$Global_active_power,type="l",xlab="",ylab="Global Active Power",cex.lab=0.5)))

plot4_2 <- with(epc2,(plot( epc2$datetime,epc2$Voltage,type="l",xlab="datetime",ylab="Voltage",cex.lab=0.5)))

plot4_3 <-with(epc2,({
  plot( epc2$datetime,epc2$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering",cex.lab=0.5)
  lines(epc2$datetime,epc2$Sub_metering_2,type="l",sub = "Sub_metering_1",col="red")
  lines(epc2$datetime,epc2$Sub_metering_3,type="l",sub = "Sub_metering_1",col="blue")
  legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1:3,cex=0.4)
}))


plot4_4 <- with(epc2,(plot( epc2$datetime,epc2$Global_reactive_power,type="l",xlab="datetime",cex.lab=0.5)))


dev.copy(png,file = "plot4.png", width=480,height=480)
dev.off()
