rm (list = ls())
graphics.off()
load ("household_power_1stFeb2007_to_2ndFeb2007_correct_format.Rd")
plot (c(1:2880), relevant$Sub_metering_1, xaxt="n", type="l",
      yaxt="n",
      ylab="Energy sub metering", xlab="",
      #ylim=c(0,40),
      col='black');

lines (c(1:2880), relevant$Sub_metering_2, col='red')
lines (c(1:2880), relevant$Sub_metering_3, col='blue')
    
axis (1, at=c(1,1440,2880), labels=c("Thu", "Fri", "Sat"))
axis (2, at=c(0,10,20,30))
legend ("topright", lty=1, col=c('black', 'red', 'blue'),
        legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

png (filename = "plot3.png", width=480, height=480)
plot (c(1:2880), relevant$Sub_metering_1, xaxt="n", type="l",
      yaxt="n",
      ylab="Energy sub metering", xlab="",
      #ylim=c(0,40),
      col='black');

lines (c(1:2880), relevant$Sub_metering_2, col='red')
lines (c(1:2880), relevant$Sub_metering_3, col='blue')

axis (1, at=c(1,1440,2880), labels=c("Thu", "Fri", "Sat"))
axis (2, at=c(0,10,20,30))
legend ("topright", lty=1, col=c('black', 'red', 'blue'),
        legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()