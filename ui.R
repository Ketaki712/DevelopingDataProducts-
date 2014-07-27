library(shiny)
shinyUI(pageWithSidebar(
  
  headerPanel("BMI Calculator"),
  sidebarPanel(
    helpText("Use the text input box to change the weight and height. You may also use the arrows to increment or decrement by 1. Then see how the Body Mass Index (BMI) value is affected."),
    numericInput('weight', 'Please enter weight in lbs', 100, min = 0, max = 400, step = 1),
    numericInput('height', 'Please enter height in inches', 66, min = 0, max = 100, step = 1),
    h3('Here are the results'),
    h4('Weight in lbs'),
    verbatimTextOutput("oid1"),
    h4('Height in inches'),
    verbatimTextOutput("oid2"),
    h4('Your Body Mass Index(BMI) Value is'),
    verbatimTextOutput("odate")

  ),
  mainPanel(
    
    h3('What do the results mean?'),
    h4("If BMI < 18.5, then you are Underweight-- please consult your healthcare provider"),
    h4("If BMI between 18.5 -24.9 , then you are Normal weight - Good Job!"),
    h4("If BMI between 25 to 29.9, then you are Overweight -- Warning Sign!"),
    h4("If BMI > 30, then you are Obese-- please consult your healthcare provider")
  )
))