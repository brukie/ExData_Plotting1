##read data into R
data <- read.table("household_power_consumption.txt", header = T, sep = ";", na.strings = "?")
##convert data variable
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
##subset data
data <- subset(data, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))
##open device
if(!file.exists('figures')) dir.create('figures')
png(filename = './figures/plot1.png', width = 480, height = 480, units='px')
##plpt
with(data, hist(Global_active_power, xlab = 'Global Active Power (kilowatt)', main = 'Global Active Power', col = 'red'))
##close device
dev.off(
