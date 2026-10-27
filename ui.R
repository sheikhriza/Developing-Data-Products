library(shiny)

shinyUI(fluidPage(
    titlePanel("Car MPG Predictor (Based on Horsepower)"),
    sidebarLayout(
        sidebarPanel(
            h3("1. Application Inputs"),
            numericInput("hp_input", "Enter Gross Horsepower (HP):", value = 110, min = 50, max = 350, step = 5),
            checkboxInput("show_model", "Show/Hide Regression Line on Plot", value = TRUE),
            hr(),
            h3("Documentation / How-to Guide"),
            p("This application predicts a car's Miles Per Gallon (MPG) using a linear regression model trained on the classic 'mtcars' dataset."),
            strong("Instructions:"),
            tags$ol(
                tags$li("Enter a horsepower value between 50 and 350 in the numeric input box above."),
                tags$li("Toggle the checkbox to show or hide the linear model fit line on the visualization scatter plot."),
                tags$li("View your real-time results instantly displayed on the right-hand panel outputs.")
            )
        ),
        mainPanel(
            h3("2. Reactive Analysis & Output"),
            h4("Predicted Miles Per Gallon (MPG):"),
            verbatimTextOutput("pred_mpg"),
            h4("Visualizing the Model Fit:"),
            plotOutput("plot1")
        )
    )
))
