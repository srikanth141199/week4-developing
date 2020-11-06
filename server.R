library(shiny)
library(datasets)

navishayamu <- mtcars
navishayamu$am <- factor(navishayamu$am, labels = c("daniki adey", "daniki manam"))

shinyServer(function(input, output) {
    
    formulaText <- reactive({
        paste("mpg ~", input$variable)
    })
    
    formulaTextPoint <- reactive({
        paste("mpg ~", "as.integer(", input$variable, ")")
    })
    
    bondhalodhi <- reactive({
        lm(as.formula(formulaTextPoint()), data=navishayamu)
    })
    
    output$naistam <- renderText({
        formulaText()
    })
    
    output$nagudranibomma <- renderPlot({
        boxplot(as.formula(formulaText()), 
                data = navishayamu,
                outline = input$outliers)
    })
    
    output$bondhalodhi <- renderPrint({
        summary(bondhalodhi())
    })
    
    output$nabomma <- renderPlot({
        with(mpgData, {
            plot(as.formula(formulaTextPoint()))
            abline(fit(), col=2)
        })
    })
    
})