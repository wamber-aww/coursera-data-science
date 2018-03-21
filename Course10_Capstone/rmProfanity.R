rmProfanity <- function(file, reference){
  
  ## This function takes in an original file and removes profanity 
  ## based on the words found in the reference file
  ## Note that the original file will be replaced with the filtered file!
  
  file <- tolower(file)
  for (i in 1:length(reference)){
    file <- gsub(pattern = reference[i], replacement = '', x = file)
    #needs to update the file as the loop goes through
  }
  return(file)
}