best <- function(state, outcome) {
  #reads the outcome-of-care-measures.csv file and returns a character vector
  #with the name of the hospital that has the best (i.e. lowest) 30-day 
  #mortality for the specified outcome in that state. If there is a tie, the
  #hospital names are sorted in alphabetical order and the first hospital in
  #the set would be chosen and returned
  
  #state: 2-character abbreviated name of the state
  #outcome: one of "heart attack", "heart failure", or "pneumonia"
  
  ## Read outcome data
  rawData <- read.csv('outcome-of-care-measures.csv', colClasses = 'character')
    #colClasses is important or the columns will be read as functions!!!!
    #b/c there is 'Not available' in the columns
  outcomeData <- rawData[ ,c(2, 7, 11, 17, 23)]
  colnames(outcomeData) <- c('Hospital', 'State', 'heart attack', 'heart failure', 'pneumonia')
  
  ## Check that state and outcome are valid
  if (state %in% outcomeData[, 2] == FALSE) {
    #if state is not in the state list, stop the function and print error
    stop('invalid state')
  }
  if (outcome %in% colnames(outcomeData)[3:5] == FALSE) {
    #if outcome is not in the outcome list, stop the function and print error
    stop('invalid outcome')
  }
  
  ## Return hospital name in that state with lowest 30-day death rate
  selectData <- outcomeData[outcomeData$State == state, c('Hospital', 'State', outcome)]
    #select only the query outcome in the state
  selectData <- selectData[order(selectData$Hospital, decreasing = F), ]
    #order hospitals alphabetically
  selectData[, 3] <- suppressWarnings(as.numeric(selectData[, 3]))
    #change the mortality column into numeric
    #warnings for coercing into NA - suppress this warning in the output
  
  #Return name of the hospital w/ the lowest 30-day death rate
  return(selectData[which.min(selectData[, 3]), 1]) 
    #which.min only finds the first occurrence
    #in this case since the hospital data is already sorted, the
    #only hospital name returned will be alphabetical
}

