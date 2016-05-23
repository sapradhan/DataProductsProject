#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Moon Phase Calculator"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      dateInput("date", "Enter Date:", value = Sys.Date()),
      radioButtons("detail", "Detail",
                   c("Simple" = "4",
                     "Detailed" = "8"))
    ),
    
    
    mainPanel(
       h2(textOutput("dateLabel")),
       h3(textOutput("phase")),
       h3(textOutput("illumination"))
    )
  )
))
