library(shiny)
library(scales)
library(shinydashboard)
library(ggplot2)
library(ggvis)
library(leaflet)
library(rCharts)
library(jsonlite)
#addResourcePath("library", "~/lib64/R/library")

shinyServer(
    
    function(input,output){
        
        ###############################################################
            
            
            points <- eventReactive(input$recalc, {
                cbind(rnorm(40) * 2 + 13, rnorm(40) + 48)
            }, ignoreNULL = FALSE)
            
            output$mymap <- renderLeaflet({
                leaflet() %>% setView(lng = 90.407143 , lat = 23.70992, zoom =14) %>% addTiles(
                    
                ) %>%
                  #  addProviderTiles("Stamen.TonerLite",
                              #       options = providerTileOptions(noWrap = TRUE)
                  #  ) 
          #  %>%
                    addMarkers(lng = 90.407143 , lat = 23.70992 , popup="Dhaka")
            })
        
        
        ###############################################################

        set.seed(122)
        histdata <- rnorm(500)
        
        output$plot1 <- renderPlot({
            data <- histdata[seq_len(input$slider)]
            hist(data)
        })
      ###############################################
#         
#         
#         output$profit <- renderUI({
#             tags$iframe(
#                 seamless="seamless",
#                 src="library/r_package/html/profit.html")
#         })
        
        
        output$profit <- renderUI({
          tags$iframe(
           # seamless="seamless",
            src="profit.html", width='100%', height='520',  frameBorder='0')
        })
        
#         output$myChart <- renderChart2({
#             h1 <- Highcharts$new()
#             h1$chart(type = "spline")
#             h1$series(data = c(1, 3, 2, 4, 5), dashStyle = "longdash")
#             h1$series(data = c(NA, 4, 1, 3, 4), dashStyle = "shortdot")
#             h1$params$width <- 420
#             h1$params$height <- 250
#             h1$legend(symbolWidth = 80)
#             return(h1)
#         })
        
        
        
        output$myChart <- renderChart({
            names(iris) = gsub("\\.", "", names(iris))
            p1 <- rPlot(input$x, input$y, data = iris, color = "Species", 
                        facet = "Species", type = 'point')
            p1$addParams(dom = 'myChart')
            return(p1)
        })
        
    ##############################################
        
#         output$lefletmap <- renderUI({
#             tags$iframe(
#                 seamless="seamless",
#                 src="www/map.html")
#         })
#         
        
           
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