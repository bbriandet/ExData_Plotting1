source("load.R")

par(mfrow=c(2,2))

source("plot2.R")

plot(data$Voltage ~ datetime,
     type = 'l',
     ylab = "Voltage")

source("plot3.R")

plot(data$Global_reactive_power ~ datetime,
     type = 'l',
     ylab = "Global_reactive_power")

dev.copy(png, "plot4.png")
dev.off()