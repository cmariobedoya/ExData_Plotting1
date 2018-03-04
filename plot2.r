#establecemos nuestro entorno de trabajo
setwd("D:/SpecializationR/EXPLORATORY_DATA_ANALYSIS/ExData_Plotting1")
dataFile <- "./data/household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
#filtramos el periíodo de tiempo deseado
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#convertimos el campo fecha a tipo Date
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()