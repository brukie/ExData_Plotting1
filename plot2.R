## convert data and time to specific format
> data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
> data <- subset(data, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))
> data$datetime <- strptime(paste(data$Date, data$Time), "%Y-%m-%d %H:%M:%S")
> data$datetime <- as.POSIXct(data$datetime)
## open device
> png(filename = './figures/plot2.png', width = 480, height = 480, units='px')
##plot figure
> plot(data$datetime, data$Global_active_power, xlab = '', ylab = 'Global Active Power (kilowatt)', type = 'l')
## close device
> dev.off()
