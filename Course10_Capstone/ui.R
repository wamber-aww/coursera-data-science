library(shiny)
#nGramAll <- fread('predictionTableFull.csv')

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Next Word Prediction App"),
  
  # Sidebar with a slider input for number of predicted words to return 
  sidebarLayout(
    sidebarPanel(
      strong('Introduction'),
      p('This is the Shiny app for next word prediction for the Coursera Data Science Capstone Project'),
      p("The algorithm is based on Katz's back-off model using 2-gram to 7-grams"),
      strong('Instructions'),
      p('The inputs are as follows'),
      tags$ul(
        tags$li('Query word/phrase: word or phrase for prediction'),
        tags$li('Number of predicted next word: the number of predictions')
      ),
      strong('Output'),
      p('The predicted next word will show up in the order of most frequently used to less frequently used')
    ),
    
    # Show a plot of the generated distribution
    mainPanel(

      h4('Query word/phrase:'),
      tags$textarea(id = 'query', rows = 2, cols = 50),
      HTML("<br>"), HTML("<br>"),
      h4('Number of predictions:'),
      sliderInput('wordN', '',
                  min = 1, max = 5, value = 1, step = 1),
      HTML("<br>"), hr(), HTML("<br>"), 
      h4('Predicted next word'),
      verbatimTextOutput('predicted')
      
    )
  )
))
