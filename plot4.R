plot4 <- function() {
  #Use function to read and subset the data
  source('getData.R')
  df <- getData()
  #Make the plot
  png('plot4.png', width = 480, height = 480)
  par(mfrow=c(2,2))
  with(df, {plot(datetime, Global_active_power, ylab = 'Global active Power (kilowatts)', xlab = '', type='l')
    plot(datetime, Voltage, type='l')
    plot(datetime, Sub_metering_1, type = "l", ylab='Energy sub metening', xlab='') 
    lines(datetime, Sub_metering_2, col='red')
    lines(datetime, Sub_metering_3, col='blue') 
    legend('topright', lty = 1, cex = 0.7, bty = 'n', col=c('black', 'red', 'blue'), legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'))
    plot(datetime, Global_reactive_power, type='l')
  })
  dev.off()
}
