#Establecemos nuestro entorno de trabajo
setwd("D:/SpecializationR/EXPLORATORY_DATA_ANALYSIS/ExData_Plotting1")
#leemos nuestro archivo y filtramos el período de tiemo que queremos
dataFile <- "./data/household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#Leemos la variable global active power
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
