# Loading data, naming and subset data of power consumption
power <- read.table("household_power_consumption.txt", skip = 1, sep = ";")
names(power) <- c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
subpower <- subset(power, power$Date == "1/2/2007" | power$Date == "2/2/2007")

# Call plot function
hist(as.numeric(as.character(subpower$Global_active_power)), col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

# Graph title
title(main = "Global Active Power")

# Export graph to a file
dev.copy(png, file = "plot1.png")
dev.off()