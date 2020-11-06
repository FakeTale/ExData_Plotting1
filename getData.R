getData <- function(path = './household_power_consumption.txt') {
  #Read the file
  data <- read.csv(path, header = TRUE, sep =';', na.strings = '?')
  #Get only data for 2 days
  df <- subset(data, (Date == '1/2/2007' | Date == '2/2/2007'))
  #Change Date column class and create datetime columm
  df$Date <- as.Date(df$Date,format="%d/%m/%Y")
  df$datetime <- paste(df$Date, df$Time)
  df$datetime <- strptime(df$datetime, format = '%Y-%m-%d %H:%M:%S')
  df
}

