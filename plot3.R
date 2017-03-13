source("load.R")

plot(data$Sub_metering_1 ~ datetime,
     type ='l',
     ylab = "Energy sub metering", xlab = "")
lines(data$Sub_metering_2 ~ datetime, col = "red")
lines(data$Sub_metering_3 ~ datetime, col = "blue")

legend("topright",
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       text.width = 40000,
       lty = c(1,1), lwd = c(2.5, 2.5),
       col = c("black", "red", "blue"))

dev.copy(png, "plot3.png")
dev.off()