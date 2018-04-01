library(shiny)
library(ggplot2)
data(swiss)


# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  #----- PART I: HISTOGRAM
  # Extract the column of interest from the swiss data and save the column
  # Reactive is used like a function!

  histVal <- reactive({
    swiss[, input$histX]
  })
  
  # Make the histogram
  output$HistOneVar <- renderPlot({
    hist(swiss[, input$histX],
         breaks = seq(min(histVal()) , max(histVal()), length.out = input$bins + 1),
         #set the breaks according the the bins
         #ge the min and max for each column - call histVal AS A FUNCTION!
         xlab = input$histX, 
         main = paste('Distribution of', input$histX),
         col = 'darkgray', border = 'white')
  })
  
  
  #----- PART II: SCATTER PLOT
  #Extract the columns of interst from the swiss data and save the data
  scatX <- reactive({
    swiss[, input$scatterX]
  })
  
  scatY <- reactive({
    swiss[, input$scatterY]
  })
  
  scatCol <- reactive({
    swiss[, input$scatterCol]
  })
  
  # Make the scatter plot
  output$ScatThreeVar <- renderPlot({
    ggplot(data = swiss, aes(x = scatX(), y = scatY(), color = scatCol())) +
      geom_point() +
      xlab(input$scatterX) + ylab(input$scatterY) +
      labs(colour = input$scatterCol) +
      ggtitle(paste('Scatter plot of', input$scatterX, 'vs', input$scatterY)) +
      theme(plot.title = element_text(hjust = 0.5))
  })


})
