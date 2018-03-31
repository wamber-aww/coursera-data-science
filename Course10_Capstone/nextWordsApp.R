nextWords <- function(rawStr, n, nGramAll) {
  
  ## [A] Remove numbers and punctuations
  filtList <- gsub('[[:punct:]]|[[:digit:]]', "", tolower(rawStr))
  # strsplit by all white spaces
  filtList <- unlist(strsplit(filtList, "\\s+"))
  
  ## [B] Extract last 6 words for query
  if (length(filtList) > 6) {
    filtList <- filtList[(length(filtList)-5):length(filtList)] #make query length 6
    filtStr <- paste(filtList, collapse = " ") #combine back to sentence
  } else {
    filtStr <- paste(filtList, collapse = " ") #combine back to sentence
  }
  
  ## [C] Returns all the matched words
  predText <- nGramAll[filtStr == nGramAll$query, ]$predict
  if (length(predText) > 0) {
    #hit with 7 gram
    finalText <- predText
  } else {
    #no hits
    filtStr <- paste(filtList[2:length(filtList)], collapse = " ") #remove 1st word
    predText <- nGramAll[filtStr == nGramAll$query, ]$predict
    if (length(predText) > 0) {
      #hit with 6 gram
      finalText <- predText
    } else {
      #no hits
      filtStr <- paste(filtList[3:length(filtList)], collapse = " ") #remove 2nd word
      predText <- nGramAll[filtStr == nGramAll$query, ]$predict
      if (length(predText) > 0) {
        #hit with 5 gram
        finalText <- predText
      } else {
        #no hits
        filtStr <- paste(filtList[4:length(filtList)], collapse = " ") #remove 3rd word
        predText <- nGramAll[filtStr == nGramAll$query, ]$predict
        if (length(predText) > 0) {
          #hit with 4 gram
          finalText <- predText
        } else {
          #no hits
          filtStr <- paste(filtList[5:length(filtList)], collapse = " ") #remove 4th word
          predText <- nGramAll[filtStr == nGramAll$query, ]$predict
          if (length(predText) > 0) {
            #hit with 3 gram
            finalText <- predText
          } else {
            #no hits
            filtStr <- paste(filtList[6:length(filtList)], collapse = " ") #remove 5th word (one word left)
            predText <- nGramAll[filtStr == nGramAll$query, ]$predict
            if (length(predText) > 0) {
              #hit with 2 gram
              finalText <- predText
            } else {
              #no hits
              finalText <- 'the' #most common word
            }
          }
        }
      }
    }  
  }
  return(finalText[1:n])
}