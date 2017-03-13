source("load.R")

plot2 <- plot(data$Global_active_power ~ datetime,
              type = 'l',
              ylab = "Global Active Power (kilowatts)", xlab="")

dev.copy(png, "plot2.png")
dev.off()