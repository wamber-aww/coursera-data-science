complete <- function(directory, id = 1:332) {
  ##reads a directory full of files and reports the number of 
  ##completely observed cases in each data file
  monitorId <- c()
  completeCases <- c()
  for (i in id) {
    monitorId <- append(monitorId, i)
    filePath <- paste(directory, '/', formatC(i, width = 3, flag = "0"), '.csv', sep = "")
    fileData <- read.csv(filePath)
    completeCount <- sum(complete.cases(fileData))
    completeCases <- append(completeCases, completeCount)
  }
  #  print(MonitorId)
  #  print(CompleteCases)
  return(as.data.frame(cbind(monitorId, completeCases)))
}
