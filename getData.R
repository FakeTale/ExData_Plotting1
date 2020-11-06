getData <- function(path = './household_power_consumption.txt') {
  data <- read.csv(path, header = TRUE, sep =';', na.strings = '?')
  df <- subset(data, (Date == '1/2/2007' | Date == '2/2/2007'))
  df$Date <- as.Date(df$Date,format="%d/%m/%Y")
  df$datetime <- paste(df$Date, df$Time)
  df$datetime <- strptime(df$datetime, format = '%Y-%m-%d %H:%M:%S')
  df
}

