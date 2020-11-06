plot2 <- function(df) {
  #Use function to get prepared data
  source('getData.R')
  df <- getData()
  #Make the plot
  plot(df$datetime, df$Global_active_power, ylab = 'Global ctive Power (kilowatts)', xlab = '', type='l')
  dev.copy(png, file = "plot2.png")  
  dev.off()
}
