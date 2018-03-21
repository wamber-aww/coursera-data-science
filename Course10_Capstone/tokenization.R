tokenization <- function(file){
  
  ## This function takes in a file and returns a tibble of the word frequency
  
  library(tidyverse)
  library(tidytext)
  wordFreq <- as_data_frame(file) %>% unnest_tokens(word, value) %>% count(word, sort = T)
  #make file a data frame
  #clean up (remove punctuations, convert everything to lowercase)
  #count the frequency of each word
  
  return(wordFreq)
}