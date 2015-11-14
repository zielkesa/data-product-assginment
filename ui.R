###############################################
# A simple shiny app to display the behaviour #
# of the logistic equation                    #
# x(n+1) = r*x(1-x)                           #
###############################################

library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Logistic Equation: x(n+1)=r*x*(1-x)"),
  sidebarPanel(
    h3('Use the sliders to select values for the equation'),
    sliderInput('r_in', 'Select a value for r', value=3.2, min=0.1, max=4),
    sliderInput('x_in', 'Select a value for x', value=0.5, min=0, max=1)
  ),
  mainPanel(
    h3('Plot of the first 100 iterations'),
    plotOutput('plot_out')
    
  )
))