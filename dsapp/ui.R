library(shinydashboard)
library(ggplot2)
library(ggvis)
library(leaflet)
library(rCharts)
library(jsonlite)

#addResourcePath("library", "~/lib64/R/library")

options(RCHART_LIB = "polycharts")

r_colors <- rgb(t(col2rgb(colors()) / 255))
names(r_colors) <- colors()

dashboardPage(skin="green",
    dashboardHeader(disable = FALSE,
        title = "Dashboard",
        dropdownMenu(
            messageItem(
                from = "Sales Dept",
                message = "Sales are stedy this month"
            ),
            messageItem(
                from = "New User",
                message = "How do i register?",
                icon = icon("question"),
                time ="13:45"
            ),
            messageItem(
                from = "Support",
                message = "The new server is ready",
                icon = icon("life-ring"),
                time="2014-12-01"
            ) 
        ),
        dropdownMenu(type = "notifications",
                     notificationItem(
                         text = "5 new users today",
                         icon("users")
                     ),
                     notificationItem(
                         text = "12 items delivert",
                         icon("truck"),
                         status = "success"
                     ),
                     notificationItem(
                         text = "Server load is 86%",
                         icon = icon("exclamation-triangle"),
                         status = "warning"
                     )
            
        ),
        dropdownMenu(
            type = "tasks",badgeStatus = "success",
            taskItem(
                value = 90,color = "green",
                "Documentation"
            ),
            taskItem(
                value = 17,color = "aqua",
                "Project x"
            ),
            taskItem(value = 75,color = "yellow","Server Deployment"),
            taskItem(value = 80,color = "red","Overall project")
        )
        
    ),
    dashboardSidebar(
         tags$head(includeScript("google-analytics.js")) ,
        

        sidebarSearchForm(textId = "searchText",buttonId = "searchButton",label = "Search...."),
        sidebarMenu(
            menuItem("Dashboard",tabName = "dashboard",icon = icon("dashboard")),
            menuItem("Widget",tabName = "widgets",icon = icon("th"),
                     badgeLabel = "new",badgeColor = "green"
                     ),
            menuItem("Infobox",tabName = "infobox",icon = icon("bicycle")),
            menuItem("Leaflet Map",tabName = "leafmap",icon = icon("globe")),
            menuItem("Accident",tabName = "childaccident",icon = icon("binoculars")),
            menuItem("Map",tabName = "plottest",icon = icon("cubes")),
            menuItem("rCharts",tabName = "rCharts",icon = icon("coffee")),
	        menuItem("UDC",tabName = "uDCAnalysics" , icon = icon("spinner"))

            
        )
    ),
    dashboardBody(
        tabItems(
            tabItem(tabName = "dashboard",
                fluidRow(
                    box(
                        title = "Histogram",
                        #background = "maroon",
                        status = "primary",
                        solidHeader = TRUE,
                        collapsible = TRUE,
                        plotOutput("plot1",height = 250)
                       
                        ),
                    box(title = "Inputs",status = "warning",solidHeader = TRUE,
                        collapsible = TRUE,
                        "Box content are here",
                        br(),
                       # textInput("text","Text input"),
                        sliderInput("bins",
                                    "Number of bins:",
                                    min = 1,
                                    max = 50,
                                    value = 30),
                    
                        sliderInput("slider","Number of Observation",1,100,50)
                        
                    )
        
                ),
                fluidRow(
                    box(
                        title = "ggplot2",
                      #  background = "purple",
                        status = "info",
                        solidHeader = TRUE,
                        collapsible = TRUE,
                       # div(showOutput("myChart", "Highcharts"),style = 'width:50%;height:250;')
                     # showOutput("myChart","Highcharts")
                     img(src="plot.png",width = 500,height=250)
                 #   plotOutput("plot2",height = 250),
                   # renderChart2("plot2")
                 #column(9, div(showOutput("histogram","nvd3")), style = 'align:center;')
                    )
                )
            ),
            tabItem(tabName = "widgets",
                    h2("Widgets tab content"),
                    fluidRow(
                        tabBox(
                            title = "First tabBox",
                            id="tabset1",height = "250px",
                            tabPanel("Tab1","First tab content"),
                            tabPanel("Tab2","Tab content 2")
                            ),
                        tabBox(side = "right",height = "250px",
                               selected = "Tab3",
                               tabPanel("Tab1","Tab content 1"),
                               tabPanel("Tab2","Tab content2"),
                               tabPanel("Tab3","Tab side right mean left")
                               )
                    ),
                    fluidRow(
                        tabBox(
                            title = tagList(shiny::icon("gear"),"TabBox status"),
                            tabPanel("Tab1",
                                     "Currently selected tab from first box:",
                                     verbatimTextOutput("tabsetSelected")
                                     ),
                            tabPanel("Tab2","Tab content 2")
                            
                        )
                    )
                
            ),
            tabItem(
                tabName = "infobox",
                fluidRow(
                   infoBox(
                      "New Orders",10*2,icon = icon("credit-card")
                     
                   ),
                   infoBoxOutput("progressBox2"),
                   infoBoxOutput("approvalBox2")
                ),
                fluidRow(
                    infoBox(
                        "New Orders",10*2,icon = icon("credit-card"),
                        fill = TRUE
                    ),
                    infoBoxOutput("progressBox3"),
                    infoBoxOutput("approvalBox3")
                ),
                fluidRow(
                    box(width = 4,actionButton("count","Increment progress"))
                )
            ),
            tabItem(
                tabName = "leafmap",
                fluidRow(
                    column(width=12, 
                           h2("Map"),
                           p("Animated map of US roads collisions in 2013:"),
                           tags$iframe(src = "https://denniskorablev.cartodb.com/viz/e2b8cbac-e8fe-11e4-8cab-0e853d047bba/embed_map", seamless=NA,width='100%',height='500'),
                           p(""),
                           p(""))
                )
            
        ),
        tabItem(
            tabName = "childaccident",
            fluidRow(
                column(width=12, 
                       h2("Largest crashes"),
                       p("Largest fatal collisions in 2013:"),
                       tags$iframe(src = "https://denniskorablev.cartodb.com/viz/46e8c95c-e91c-11e4-934f-0e018d66dc29/embed_map", seamless=NA,width='100%',height='520'),
                       p(""),
                       p(""))
                 )
             ),tabItem(
                 tabName = "plottest",
                 fluidRow(
                     column(width=12, 
                          #  h2("Leaflet Map Test"),
                                # r_colors <- rgb(t(col2rgb(colors()) / 255)),
                                # names(r_colors) <- colors(),
                                 leafletOutput("mymap", width='100%', height='520' ),
                              #   p(),
                            actionButton("recalc", "New points")
                     )
                 )
             ),
        tabItem(
            tabName = "rCharts",
            fluidRow(
                column(width=12, 
                           selectInput(inputId = "x",
                                       label = "Choose X",
                                       choices = c('SepalLength', 'SepalWidth', 'PetalLength', 'PetalWidth'),
                                       selected = "SepalLength"),
                           selectInput(inputId = "y",
                                       label = "Choose Y",
                                       choices = c('SepalLength', 'SepalWidth', 'PetalLength', 'PetalWidth'),
                                       selected = "SepalWidth"),
                           showOutput("myChart", "polycharts")
                       
                )
            )
          ),
        tabItem(
            tabName = "uDCAnalysics",
            fluidRow(
                column(width=12, 
                       htmlOutput("profit")
                      
                )
            )
        )
       
      )  
    ),
  HTML("Demo built for SECL by Marjan")
)
























