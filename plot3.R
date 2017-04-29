## Plot 3 
plot3 <-with(epc2,(plot( epc2$datetime,epc2$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")))
lines(epc2$datetime,epc2$Sub_metering_2,type="l",sub = "Sub_metering_1",col="red")
lines(epc2$datetime,epc2$Sub_metering_3,type="l",sub = "Sub_metering_1",col="blue")
legend("topright",30,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1:3,cex=0.5)

dev.copy(png,file = "plot3.png", width=480,height=480) # Print plot3 to png file
dev.off()