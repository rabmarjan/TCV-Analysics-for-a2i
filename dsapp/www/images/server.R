library(shiny)
library(scales)
library(shinydashboard)
library(ggplot2)
library(ggvis)
library(leaflet)
library(jsonlite)
shinyServer(
    
    function(input,output){
        
        ###############################################################
            
            points <- eventReactive(input$recalc, {
                cbind(rnorm(40) * 2 + 13, rnorm(40) + 48)
            }, ignoreNULL = FALSE)
            
            output$mymap <- renderLeaflet({
                leaflet() %>% addTiles() %>%
                  #  addProviderTiles("Stamen.TonerLite",
                              #       options = providerTileOptions(noWrap = TRUE)
                  #  ) 
          #  %>%
                    addMarkers(data = points())
            })
        
        
        ###############################################################

        set.seed(122)
        histdata <- rnorm(500)
        
        output$plot1 <- renderPlot({
            data <- histdata[seq_len(input$slider)]
            hist(data)
        })
        
        
#         output$lefletmap <- renderUI({
#             tags$iframe(
#                 seamless="seamless",
#                 src="www/leafletmap.html")
#        })
        
        
           
        output$progressBox <- renderValueBox({
            valueBox(
                paste0(25 + input$count, "%"), "Progress", icon = icon("list"),
                color = "purple"
            )
        })
        
        output$approvalBox <- renderValueBox({
            valueBox(
                "80%", "Approval", icon = icon("thumbs-up", lib = "glyphicon"),
                color = "yellow"
            )
        })
    }
        
)