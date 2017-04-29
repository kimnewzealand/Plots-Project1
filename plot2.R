## Plot 2
plot2 <-with(epc2,(plot( epc2$datetime,epc2$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)",cex.lab=0.75,cex.axis=0.75)))
dev.copy(png,file = "plot2.png", width=480,height=480) # print plot2 to png file
dev.off()