rm (list = ls())
graphics.off()
load ("household_power_1stFeb2007_to_2ndFeb2007_correct_format.Rd")
plot (c(1:2880), relevant$Global_active_power, type="l",
      xaxt = "n",
      ylab = "Global Active Power (kilowatts)",
      xlab = "")
axis (1, at=c(1,1440,2880), labels=c("Thu", "Fri", "Sat"))

png (filename = "plot2.png", width=480, height=480)
load ("household_power_1stFeb2007_to_2ndFeb2007_correct_format.Rd")
plot (c(1:2880), relevant$Global_active_power, type="l",
      xaxt = "n",
      ylab = "Global Active Power (kilowatts)",
      xlab = "")
axis (1, at=c(1,1440,2880), labels=c("Thu", "Fri", "Sat"))
dev.off()