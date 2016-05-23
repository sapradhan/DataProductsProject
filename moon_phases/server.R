#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(lunar)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  output$dateLabel <- renderText(paste('On', format(as.Date(input$date), format="%B %d %Y") ))
  output$phase <- renderText(paste('Moon Phase is', 
                                   lunar.phase(as.Date(input$date), name = as.integer(input$detail))))
  output$illumination <- renderText(paste('And it is ', 
                                          format(lunar.illumination(as.Date(input$date))*100, digits = 2), '% illuminated'))
})
