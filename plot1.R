rm (list = ls())
graphics.off()
load ("household_power_1stFeb2007_to_2ndFeb2007_correct_format.Rd")
hist (relevant$Global_active_power, col='red', xlab = "Global Active Power (kilowatts)",
      main= "Global Active Power",
      xlim=c(0,6),  xaxt="n")
axis (1, at = c(0,2,4,6))

png (filename = "plot1.png", width=480, height=480)
hist (relevant$Global_active_power, col='red', xlab = "Global Active Power (kilowatts)",
      main= "Global Active Power",
      xlim=c(0,6),  xaxt="n")
axis (1, at = c(0,2,4,6))
dev.off()