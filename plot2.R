plot2 <- function(df) {
  source('getData.R')
  df <- getData()
  plot(df$datetime, df$Global_active_power, ylab = 'Global ctive Power (kilowatts)', xlab = '', type='l')
  dev.copy(png, file = "plot2.png")  
  dev.off()
}