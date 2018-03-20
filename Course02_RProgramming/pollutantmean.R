pollutantmean <- function(directory, pollutant, id = 1:332) {
  
  ##calculates the mean of a pollutant (sulfate or nitrate) 
  ##across a specified list of monitors
  
  ##'directory' is a character vector of length 1 indicating 
  ##the location of the CSV files
  
  ##'id' is an integer vector indicating the monitor ID numbers to be used
  
  ##'pollutant' is a character vector of length 1 indicating
  ##the name of the pollutant for which we will calculate the
  ##mean; either 'sulfate' or 'nitrate'.
  
  measurements <- c() #make an empty vector
  
  for (i in id) {
    filePath <- paste(directory, '/', formatC(i, width = 3, flag = "0"), '.csv', sep = "")
    #make id number all the same length (3 digits)
    fileData <- read.csv(filePath) #read the file
    measurements <- append(measurements, fileData[, pollutant])
  }
  
  return(mean(measurements, na.rm = T))
}
