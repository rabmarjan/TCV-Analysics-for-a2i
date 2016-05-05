library(shiny)
library(scales)
library(shinydashboard)
library(datasets)
library(shinyjs)
Logged = FALSE;
#PASSWORD <- data.frame(user = c("m","marjan", "secl"), Passord = c("6f8f57715090da2632453988d9a1501b","122f961db675f6a45b998594471a990b","fb3ffa74207e3c2e1d508bfc5eb71e4a"))
PASSWORD <- read.csv("www/PWD.csv")
# Define server logic required to summarize and view the selected dataset
shinyServer(
    function(input,output){
  source("www/Login.R",  local = TRUE)
  observe({
   
    if (USER$Logged == TRUE) {
        output$GeoServerLeafletUnion <- renderUI({
        tags$iframe(
          src="GeoServerLeafletUnion.html", width='100%', height='600', frameBorder='0')
        })
      
      output$profitdivision <- renderUI({
        tags$iframe(
          src="district.html", width='100%', height='520', frameBorder='0')
         })
  
        output$profitZila <- renderUI({
            tags$iframe(
                seamless="seamless", 
                src="thana.html", width='100%', height='520' , frameBorder='0')
         })
        
        output$union <- renderUI({
          tags$iframe(
            seamless="seamless", 
            src="union.html", width='100%', height='520' , frameBorder='0')
         })	
       
	     }
    })
 })