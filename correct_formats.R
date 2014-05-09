rm (list = ls())
load ("household_power_1stFeb2007_to_2ndFeb2007.Rd")
# Convert from factors to correct respective formats.
relevant <- subset (relevant, (Time != "?"))
relevant$Time <- strptime (relevant$Time, format="%H:%M:%S")

relevant <- subset (relevant, (Global_active_power != "?"))
temp <- as.vector (relevant$Global_active_power)
relevant$Global_active_power <- as.double (temp)

relevant <- subset (relevant, (Global_reactive_power != "?"))
temp <- as.vector (relevant$Global_reactive_power)
relevant$Global_reactive_power <- as.double(temp)

relevant <- subset (relevant, (Voltage != "?"))
temp <- as.vector (relevant$Voltage)
relevant$Voltage <- as.double(temp)

relevant <- subset (relevant, (Global_intensity != "?"))
temp <- as.vector (relevant$Global_intensity)
relevant$Global_intensity <- as.double(temp)

relevant <- subset (relevant, (Sub_metering_1 != "?"))
temp <- as.vector (relevant$Sub_metering_1)
relevant$Sub_metering_1 <- as.double(temp)

relevant <- subset (relevant, (Sub_metering_2 != "?"))
temp <- as.vector (relevant$Sub_metering_2)
relevant$Sub_metering_2 <- as.double(temp)

relevant <- subset (relevant, (Sub_metering_1 != "?"))
temp <- as.vector (relevant$Sub_metering_3)
relevant$Sub_metering_3 <- as.double (temp)
save.image (file="household_power_1stFeb2007_to_2ndFeb2007_correct_format.Rd")

