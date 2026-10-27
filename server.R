library(shiny)

shinyServer(function(input, output) {
    # 1. Fit a linear regression model using the built-in mtcars dataset
    model <- lm(mpg ~ hp, data = mtcars)
    
    # 2. Perform reactive calculations on the UI horsepower input
    predicted_value <- reactive({
        hp_val <- input$hp_input
        predict(model, newdata = data.frame(hp = hp_val))
    })
    
    # 3. Render the reactive numerical prediction text output
    output$pred_mpg <- renderText({
        round(predicted_value(), 2)
    })
    
    # 4. Render the reactive plot visualization output
    output$plot1 <- renderPlot({
        plot(mtcars$hp, mtcars$mpg, xlab = "Gross Horsepower", ylab = "Miles Per Gallon (MPG)", 
             bty = "n", pch = 16, xlim = c(50, 350), ylim = c(10, 35))
        
        # Add the dynamic custom user input point to the plot
        points(input$hp_input, predicted_value(), col = "red", pch = 18, cex = 2)
        
        # Draw the regression model line if the checkbox is checked
        if(input$show_model) {
            abline(model, col = "blue", lwd = 2)
        }
        
        legend("topright", legend = c("Dataset Cars", "Your Input Prediction", "Regression Model Line"),
               col = c("black", "red", "blue"), pch = c(16, 18, NA), lty = c(NA, NA, 1), lwd = c(NA, NA, 2))
    })
})
