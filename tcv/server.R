library(shiny)
library(scales)
library(shinydashboard)
shinyServer(
    function(input,output){
      
      output$profitdivision <- renderUI({
        tags$iframe(
          src="test2.html", width='100%', height='520', frameBorder='0')
      })
  
        output$profitZila <- renderUI({
            tags$iframe(
                # seamless="seamless", 
                src="plot2.html", width='100%', height='520', frameBorder='0')
        })

         output$plot3 <- renderUI({
            tags$iframe(
                # seamless="seamless", 
                src="plot3.html", width='100%', height='520', frameBorder='0')
        })

         output$barchart2 <- renderUI({
            tags$iframe(
                # seamless="seamless", 
                src="barchart2.html", width='100%', height='520', frameBorder='0')
        })

          output$presentation <- renderUI({
            tags$iframe(
                # seamless="seamless", 
                src="presentation.html", width='100%', height='520', frameBorder='0')
        })
####################
          output$msdupDodged <- renderUI({
              tags$iframe(
                  src="msdupDodged.html", width='100%', height='520', frameBorder='0')
          })
          
          output$msdupAdvn <- renderUI({
              tags$iframe(
                  # seamless="seamless", 
                  src="msdupAdvn.html", width='100%', height='520', frameBorder='0')
          })
          
          output$msdupDisadv <- renderUI({
              tags$iframe(
                  # seamless="seamless", 
                  src="msdupDisadv.html", width='100%', height='520', frameBorder='0')
          })
          
          output$msdupPie <- renderUI({
              tags$iframe(
                  # seamless="seamless", 
                  src="msdupPie.html", width='100%', height='520', frameBorder='0')
          })
          
          output$msdupPres <- renderUI({
              tags$iframe(
                  # seamless="seamless", 
                  src="msdupPres.html", width='100%', height='520', frameBorder='0')
          })
          
###################
          output$dppisDodged <- renderUI({
              tags$iframe(
                  src="dppisDodged.html", width='100%', height='520', frameBorder='0')
          })
          
          output$dppisAdvn <- renderUI({
              tags$iframe(
                  # seamless="seamless", 
                  src="dppisAdvn.html", width='100%', height='520', frameBorder='0')
          })
          
          output$dppisDisadv <- renderUI({
              tags$iframe(
                  # seamless="seamless", 
                  src="dppisDisadv.html", width='100%', height='520', frameBorder='0')
          })
          
          output$dppisPie <- renderUI({
              tags$iframe(
                  # seamless="seamless", 
                  src="dppisPie.html", width='100%', height='520', frameBorder='0')
          })
          
          output$dppisPre <- renderUI({
              tags$iframe(
                  # seamless="seamless", 
                  src="dppisPre.html", width='100%', height='520', frameBorder='0')
          })
          
################### OAMTP ###########
          output$oamrpDodged <- renderUI({
              tags$iframe(
                  src="oamrpDodged.html", width='100%', height='520', frameBorder='0')
          })
          
          output$oamrpAdv <- renderUI({
              tags$iframe(
                  # seamless="seamless", 
                  src="oamrpAdv.html", width='100%', height='520', frameBorder='0')
          })
          
          output$oamrpDisadv <- renderUI({
              tags$iframe(
                  # seamless="seamless", 
                  src="oamrpDisadv.html", width='100%', height='520', frameBorder='0')
          })
          
          output$oamrpPie <- renderUI({
              tags$iframe(
                  # seamless="seamless", 
                  src="oamrpPie.html", width='100%', height='520', frameBorder='0')
          })
          
          output$oamrpPre <- renderUI({
              tags$iframe(
                  # seamless="seamless", 
                  src="oamrpPre.html", width='100%', height='520', frameBorder='0')
          })
############################ MCFP
          output$mcfpDodged <- renderUI({
              tags$iframe(
                  src="mcfpDodged.html", width='100%', height='520', frameBorder='0')
          })
          
          output$mcfpAdv <- renderUI({
              tags$iframe(
                  # seamless="seamless", 
                  src="mcfpAdv.html", width='100%', height='520', frameBorder='0')
          })
          
          output$mcfpDisadv <- renderUI({
              tags$iframe(
                  # seamless="seamless", 
                  src="mcfpDisadv.html", width='100%', height='520', frameBorder='0')
          })
          
          output$mcfpPie <- renderUI({
              tags$iframe(
                  # seamless="seamless", 
                  src="mcfpPie.html", width='100%', height='520', frameBorder='0')
          })
          
          output$mcfpPre <- renderUI({
              tags$iframe(
                  # seamless="seamless", 
                  src="mcfpPre.html", width='100%', height='520', frameBorder='0')
          })
############################
          }
          
)