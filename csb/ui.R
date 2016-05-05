library(shinydashboard)
library(shiny)
library(shinyjs)

    dashboardPage(
      
    dashboardHeader(
        title = "CSP" 
                 ),
	  	dashboardSidebar( 
	  	  tagList(
	  	    tags$head(
	  	      tags$link(rel="stylesheet", type="text/css",href="style.css"),
	  	      tags$script(type="text/javascript", src = "md5.js"),
	  	      tags$script(type="text/javascript", src = "passwdInputBinding.js"),
			  tags$style(HTML('#Login{background-color:#3c8dbc;color: #FFFFFF;}'))
	  	    )
	  	  ),
        sidebarMenu(menuItem(
       
           "Agents in Map", tabName = "Udc", icon = icon("dashboard"),
            menuSubItem("GeoServer Union", tabName = "division"),
            menuSubItem("District", tabName = "district"),
            menuSubItem("Upazila", tabName = "upazila"),
            menuSubItem("Union", tabName = "union")
            
              ))
         ),
        dashboardBody(
          useShinyjs(),
          extendShinyjs(text = 'shinyjs.hideSidebar = function(params) { $("body").addClass("sidebar-collapse") }'),
          ## Login module;
          div(class = "login",
              uiOutput("uiLogin"),
              textOutput("pass")
          ),
                  tabItems(
                 
                  tabItem(tabName = "division",
                            fluidRow(
                              column(
                                width = 12,
                               # h2("CSB District Map"),
                                htmlOutput("GeoServerLeafletUnion")
                                
                              )
                            )),

                  tabItem(tabName = "district",
                          fluidRow(
                            column(
                              width = 12,
                             # h2("CSB District Map"),
                              htmlOutput("profitdivision")
                              
                            )
                          )),
      
                   tabItem(tabName = "upazila",
                                    fluidRow(
                                         column(
                                             width = 12,
                                           #  h2("CSB Upazilla Map"),
                                             htmlOutput("profitZila")
                                    
                                         )
                                     )),
                  tabItem(tabName = "union",
                          fluidRow(
                            column(
                              width = 12,
                            #  h2("CSB Union Map"),
                              htmlOutput("union")
                              
                            )
                          )) 
                    
                             )    
                )
   
    
)


  








