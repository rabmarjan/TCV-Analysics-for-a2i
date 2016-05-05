library(shinydashboard)
library(shiny)
dashboardPage(
    dashboardHeader(
      
        title = "UDC"
        
    ),
    dashboardSidebar(
        
        tags$head(includeScript("google-analytics.js")) ,
        sidebarMenu(menuItem(
           "Profit & Loss", tabName = "Udc", icon = icon("dashboard"),
            menuSubItem("Division", tabName = "division"),
            menuSubItem("District", tabName = "district"),
            menuSubItem("Upazila", tabName = "upazila"),
            menuSubItem("Union", tabName = "union")
            
            
        ))
    ),
    dashboardBody(tabItems(
                 
                  tabItem(tabName = "division",
                          fluidRow(
                            column(
                              width = 12,
                            #  h2("Profit & Loss for UDC"),
                              htmlOutput("profitdivision")
                              
                            )
                          )),
      
                   tabItem(tabName = "district",
                                    fluidRow(
                                         column(
                                             width = 12,
                                           #  h2("Profit & Loss for UDC"),
                                             htmlOutput("profitZila")
                                    
                                         )
                                     )),
                    
                    tabItem(tabName = "upazila",
                                     fluidRow(
                                         column(
                                             width = 12,
                                          #   h2("Profit & Loss for UDC"),
                                             htmlOutput("profitUpazila")
                                             
                                         )
                                     )),
                    tabItem(tabName = "union",
                                     fluidRow(
                                         column(
                                             width = 12,
                                         #    h2("Profit & Loss for UDC"),
                                             htmlOutput("profitunion")
                                             
                                         )
                                     ))
                  
                             ),
                      HTML('Demo built for a2i by  <a href="http://dist-int.com/">Distributed Intelligence Inc.</a> ')
                  
                ),
HTML("Demo built for a2i by Distributed Intelligence Inc")
)
  








