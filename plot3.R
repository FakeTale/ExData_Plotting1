plot3 <- function(df) {
  source('getData.R')
  df <- getData()
  png('plot3.png', width = 480, height = 480)
  plot(df$datetime, df$Sub_metering_1, type = "l", ylab='Energy sub metening', xlab='')
  lines(df$datetime, df$Sub_metering_2, col='red')
  lines(df$datetime, df$Sub_metering_3, col='blue')
  legend('topright', lty = 1, col=c('black', 'red', 'blue'), legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'))
  dev.off()
}
