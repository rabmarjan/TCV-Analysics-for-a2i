library(shiny)
library(scales)
library(shinydashboard)
shinyServer(
    function(input,output){
      
      output$profitdivision <- renderUI({
        tags$iframe(
         # seamless="seamless", 
          src="Profit_Division.html", width='100%', height='600', frameBorder='0', margin = '0')
      })
  
        output$profitZila <- renderUI({
            tags$iframe(
              #  seamless="seamless", 
                src="Profit_Zila.html", width='100%', height='600', frameBorder='0')
        })
        
        
        output$profitUpazila <- renderUI({
            tags$iframe(
              #  seamless="seamless", 
                src="Profit_Upazila.html", width='100%', height='600', frameBorder='0')
        })
        
        output$profitunion <- renderUI({
            tags$iframe(
               # seamless="seamless", 
                src="Profit_Union.html", width='100%', height='600', frameBorder='0')
        })
        
        
  
          }
          
)