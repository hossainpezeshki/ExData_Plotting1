rm (list = ls())
graphics.off()
load ("household_power_1stFeb2007_to_2ndFeb2007_correct_format.Rd")

par (mfrow=c(2,2))

plot (c(1:2880), relevant$Global_active_power, type="l",
      xaxt = "n",
      ylab = "Global Active Power (kilowatts)",
      xlab = "")
axis (1, at=c(1,1440,2880), labels=c("Thu", "Fri", "Sat"))

plot (c(1:2880), relevant$Voltage, type="l", col='black',
      xaxt = "n",
      ylab = "Voltage",
      xlab = "datetime")
axis (1, at=c(1,1440,2880), labels=c("Thu", "Fri", "Sat"))

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

plot (c(1:2880), relevant$Global_reactive_power, type="l",
      xaxt = "n",
      yaxt = "n",
      ylab = "Global_reactive_power",
      xlab = "datetime")
axis (1, at=c(1,1440,2880), labels=c("Thu", "Fri", "Sat"))
axis (2, at=seq(from=0.0, to=0.5, by=0.1))


png (filename = "plot4.png", width=480, height=480)
par (mfrow=c(2,2))

plot (c(1:2880), relevant$Global_active_power, type="l",
      xaxt = "n",
      ylab = "Global Active Power (kilowatts)",
      xlab = "")
axis (1, at=c(1,1440,2880), labels=c("Thu", "Fri", "Sat"))

plot (c(1:2880), relevant$Voltage, type="l", col='black',
      xaxt = "n",
      ylab = "Voltage",
      xlab = "datetime")
axis (1, at=c(1,1440,2880), labels=c("Thu", "Fri", "Sat"))

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

plot (c(1:2880), relevant$Global_reactive_power, type="l",
      xaxt = "n",
      yaxt = "n",
      ylab = "Global_reactive_power",
      xlab = "datetime")
axis (1, at=c(1,1440,2880), labels=c("Thu", "Fri", "Sat"))
axis (2, at=seq(from=0.0, to=0.5, by=0.1))

dev.off()