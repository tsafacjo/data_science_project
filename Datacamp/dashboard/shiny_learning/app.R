#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinydashboard)
library(shiny)
sidebar <- dashboardSidebar(
  # Create a select list
  selectInput(inputId = "name", 
              label = "Name",
              choices = c("ok","jo")
  )
)
body <- dashboardBody(
  textOutput("name"),
  textOutput("ici")
)

ui <- dashboardPage(header = dashboardHeader(),
                    sidebar = sidebar,
                    body = body
)

server <- function(input, output) {
  output$name <- renderText({
    input$name
  }) 
  output$ici <- renderText({
    "lol"
  })
  
  
}

shinyApp(ui, server)
