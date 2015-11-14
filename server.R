library(shiny)
shinyServer(
  function(input, output) {
    output$plot_out <- renderPlot({
      y <- input$x_in
      x_new <- input$x_in
      r <- input$r_in
      for (i in 1:100){
        x_new <- r*x_new*(1-x_new)
        y <- c(y,x_new)
      }#for
      plot(y, type="l", xlab="iteration", ylab="x value")
    })#renderPlot
  }
)