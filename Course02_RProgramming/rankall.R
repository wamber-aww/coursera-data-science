rankall <- function(outcome, num = 'best') {
  #reads the outcome-of-care-measures.csv file and returns a 2-column data frame
  #containing the hospital in each state that has the ranking specified in num.
  #the first column in the data frame is named hospital, which contains the 
  #hospital name, and the second column is named state, which contains the 
  #2-character abbreviation for the state name.
  
  
  ## Read outcome data
  rawData <- read.csv('outcome-of-care-measures.csv', colClasses = 'character')
  #colClasses is important or the columns will be read as functions!!!!
  #b/c there is 'Not available' in the columns
  outcomeData <- rawData[ ,c(2, 7, 11, 17, 23)]
  colnames(outcomeData) <- c('Hospital', 'State', 'heart attack', 'heart failure', 'pneumonia')
  
  ## Check that state and outcome are valid
  if (outcome %in% colnames(outcomeData)[3:5] == FALSE) {
    #if outcome is not in the outcome list, stop the function and print error
    stop('invalid outcome')
  }
  
  ## Select data
  selectData <- outcomeData[, c('Hospital', 'State', outcome)]
  selectData[, 3] <- suppressWarnings(as.numeric(selectData[, 3]))
  #change the mortality column into numeric
  #warnings for coercing into NA - suppress this warning in the output
  selectData <- selectData[complete.cases(selectData), ]
  #remove the NAs
  selectData <- selectData[order(selectData$Hospital, decreasing = F), ]
  #order hospitals alphabetically
  if (num == 'best') {
    #order the hospitals by smallest mortality on top (rank == 1)
    selectData <- selectData[order(selectData[, 3], decreasing = F), ]
    rank <- 1
  } else if (num == 'worst') {
    #sort the dataframe by increasing so the first row would be the worst hospital
    selectData <- selectData[order(selectData[, 3], decreasing = T), ]
    rank <- 1      
  } else {
        selectData <- selectData[order(selectData[, 3], decreasing = F), ]
        rank <- num
  }
  
  ## For each state, find the hospital of the given rank
  splitData <- split(selectData[, c(1, 3)], selectData$State)
  #split the hospital data by state and retain the hospital name (col 1) and the 
  #mortality rate (col 2)
  hospital <- sapply(splitData, function(x) x[rank, 1])
  #now splitData either is ascending or descending depending on best/worst
  #regardless, the rank is all the same
  #use sapply and apply the function that returns a data frame of row == rank, 
  #and hospital name (col 1)
  
  hospital <- data.frame(hospital)
  #make the result a dataframe
  hospital$state <- row.names(hospital)
  #add a second column that is the state (also the row names of the hospital df)
  
  return(hospital)
}
