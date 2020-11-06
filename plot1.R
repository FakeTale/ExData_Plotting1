plot1 <- function(df) {
  #use other function to read the data
  source('getData.R')
  df <- getData()
  #Make the plot
  hist(df$Global_active_power, col='red', main = 'Global Active Power', xlab = 'Global Active Power (kilowatts)')
  dev.copy(png, file = "plot1.png")  
  dev.off()
  
}
