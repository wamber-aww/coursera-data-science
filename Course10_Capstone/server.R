library(shiny)
library(data.table)

# Define server logic required to make a prediction
shinyServer(function(input, output) {
  # Load the prediction function
  source('nextWordsApp.R')
  
  # Load the prediction table
  nGramAll <- fread('predictionTableFull.csv')
  
  # Predict next word
  observe({ #need this for reactive mode!!!
    query <- as.character(input$query)
    n <- input$wordN
    result <- nextWords(query, n, nGramAll)
    
    if (query == '') {
      output$predicted <- renderPrint(cat(''))
    } else {
      output$predicted <- renderPrint(cat(result, sep = '\n'))
    }
    
    })
})
