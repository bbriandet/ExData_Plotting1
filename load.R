data <- read.csv("household_power_consumption.txt",
                 header = TRUE, sep = ";",
                 skip = 66636, nrows = 2880)

header <- read.csv("household_power_consumption.txt",
                   header = TRUE, sep = ";",
                   nrows = 1)

colnames(data) <- colnames(header)

dtstr <- paste(data$Date, data$Time)
datetime <- as.POSIXct(dtstr, "", "%d/%m/%Y %H:%M:%S")