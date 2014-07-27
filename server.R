library(shiny)
shinyServer(
  function(input, output) {
    output$oid1 <- renderPrint({input$weight})
    output$oid2 <- renderPrint({input$height})
    output$odate <- renderPrint({input$weight/(input$height)^2*703})
    
    
  }
  
  
)