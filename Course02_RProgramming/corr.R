corr <- function(directory, threshold = 0) {
  
  allFiles <- list.files(directory) #list all files in the directory
  correlation <- c() #create an empty vector to store the correlation that passes the threshold
  
  for (i in allFiles) {
    filePath = paste(directory, '/', i, sep = "")
    fileData = read.csv(filePath)
    
    if (length(which(complete.cases(fileData))) > threshold) {
      addCorr <- cor(x = fileData[, 'sulfate'], y = fileData[, 'nitrate'], use = 'complete.obs')
      correlation <- append(correlation, addCorr)
    }
  }
  return(correlation) #return this vector
}  
