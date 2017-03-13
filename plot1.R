source("load.R")

plot1 <- hist(data$Global_active_power,
              col = "red",
              main = "Global Active Power",
              xlab = "Global Active Power (kilowatts)")

dev.copy(png, "plot1.png")
dev.off()