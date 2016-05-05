library(shinydashboard)
library(shiny)
dashboardPage(
   
    dashboardHeader(
        title = "TCV" 
      
    ),
    dashboardSidebar(
        
        tags$head(includeScript("google-analytics.js")) ,
        sidebarMenu(menuItem(
           "TCV Analysis of OFR", tabName = "DPPIS", icon = icon("dashboard"),
            menuSubItem("Manual vs Online", tabName = "division"),
            menuSubItem("Advantages", tabName = "district"),
            menuSubItem("Disadvantages", tabName = "upazila"),
            menuSubItem("Beneficiary and Savings", tabName = "union"),
            menuSubItem("Summary For OFR", tabName = "summary")
        ),
            menuItem(
            "TCV Analysis of MSDUP", tabName = "MSD", icon = icon("cube"),
            menuSubItem("Manual vs Online", tabName = "msdupDodged"),
            menuSubItem("Advantages", tabName = "msdupAdvn"),
            menuSubItem("Disadvantages", tabName = "msdupDisadv"),
            menuSubItem("Beneficiary and Savings", tabName = "msdupPie"),
            menuSubItem("Summary For MSDUP", tabName = "msdupPres")
                     ),
        menuItem(
            "TCV Analysis of DPPIS", tabName = "DPP", icon = icon("cubes"),
            menuSubItem("Manual vs Online", tabName = "dppisDodged"),
            menuSubItem("Advantages", tabName = "dppisAdvn"),
            menuSubItem("Disadvantages", tabName = "dppisDisadv"),
            menuSubItem("Beneficiary and Savings", tabName = "dppisPie"),
            menuSubItem("Summary For DPPIS", tabName = "dppisPre")
        ),
        menuItem(
            "TCV Analysis of OAMRP", tabName = "MRP", icon = icon("ticket"),
            menuSubItem("Manual vs Online", tabName = "oamrpDodged"),
            menuSubItem("Advantages", tabName = "oamrpAdv"),
            menuSubItem("Disadvantages", tabName = "oamrpDisadv"),
            menuSubItem("Beneficiary and Savings", tabName = "oamrpPie"),
            menuSubItem("Summary For OAMRP", tabName = "oamrpPre")
        ),
        menuItem(
            "TCV Analysis of MCFP", tabName = "MCF", icon = icon("reorder"),
            menuSubItem("Manual vs Online", tabName = "mcfpDodged"),
            menuSubItem("Advantages", tabName = "mcfpAdv"),
           # menuSubItem("Disadvantages", tabName = "mcfpDisadv"),
            menuSubItem("Beneficiary and Savings", tabName = "mcfpPie"),
            menuSubItem("Summary For MCFP", tabName = "mcfpPre")
        )
        
      )
    ),
    dashboardBody(tabItems(
                 
                  tabItem(tabName = "division",
                          fluidRow(
                            column(
                              width = 12,
                              h2("TCV Comparison of Manual Vs. Online Service"),
                              htmlOutput("profitdivision")
                              
                            )
                          )),
      
                   tabItem(tabName = "district",
                                    fluidRow(
                                         column(
                                             width = 12,
                                             h2("Advantages of Online Service"),
                                             htmlOutput("profitZila")
                                    
                                         )
                                     )),
                    tabItem(tabName = "upazila",
                                    fluidRow(
                                         column(
                                             width = 12,
                                             h2("Disadvantages of Online Service"),
                                             htmlOutput("plot3")
                                    
                                         )
                                     )),
                    tabItem(tabName = "union",
                                    fluidRow(
                                         column(
                                             width = 12,
                                             h2("Service Beneficiary and Savings "),
                                             htmlOutput("barchart2")
                                    
                                          )
                                       )),
		    tabItem(tabName = "summary",
                                    fluidRow(
                                         column(
                                             width = 12,
                                            # h2("Service Beneficiary and Savings "),
						   br(),
                                             htmlOutput("presentation")
                                    
                                          )
                                       )),
		    tabItem(tabName = "msdupDodged",
		            fluidRow(
		                column(
		                    width = 12,
		                    h2("TCV Comparison of Manual Vs. Online Service"),
		                    htmlOutput("msdupDodged")
		                    
		                )
		            )),
		    
		    tabItem(tabName = "msdupAdvn",
		            fluidRow(
		                column(
		                    width = 12,
		                    h2("Advantages of Online Service"),
		                    htmlOutput("msdupAdvn")
		                    
		                )
		            )),
		    tabItem(tabName = "msdupDisadv",
		            fluidRow(
		                column(
		                    width = 12,
		                    h2("Disadvantages of Online Service"),
		                    htmlOutput("msdupDisadv")
		                    
		                )
		            )),
		    tabItem(tabName = "msdupPie",
		            fluidRow(
		                column(
		                    width = 12,
		                    h2("Service Beneficiary and Savings "),
		                    htmlOutput("msdupPie")
		                    
		                )
		            )),
		    tabItem(tabName = "msdupPres",
		            fluidRow(
		                column(
		                    width = 12,
		                    # h2("Service Beneficiary and Savings "),
		                    br(),
		                    htmlOutput("msdupPres")
		                    
		                )
		            )),
		    tabItem(tabName = "dppisDodged",
		            fluidRow(
		                column(
		                    width = 12,
		                    h2("TCV Comparison of Manual Vs. Online Service"),
		                    htmlOutput("dppisDodged")
		                    
		                )
		            )),
		    
		    tabItem(tabName = "dppisAdvn",
		            fluidRow(
		                column(
		                    width = 12,
		                    h2("Advantages of Online Service"),
		                    htmlOutput("dppisAdvn")
		                    
		                )
		            )),
		    tabItem(tabName = "dppisDisadv",
		            fluidRow(
		                column(
		                    width = 12,
		                    h2("Disadvantages of Online Service"),
		                    htmlOutput("dppisDisadv")
		                    
		                )
		            )),
		    tabItem(tabName = "dppisPie",
		            fluidRow(
		                column(
		                    width = 12,
		                    h2("Service Beneficiary and Savings "),
		                    htmlOutput("dppisPie")
		                    
		                )
		            )),
		    tabItem(tabName = "dppisPre",
		            fluidRow(
		                column(
		                    width = 12,
		                    # h2("Service Beneficiary and Savings "),
		                    br(),
		                    htmlOutput("dppisPre")
		                    
		                )
		            )),
		    tabItem(tabName = "oamrpDodged",
		            fluidRow(
		                column(
		                    width = 12,
		                    h2("TCV Comparison of Manual Vs. Online Service"),
		                    htmlOutput("oamrpDodged")
		                    
		                )
		            )),
		    
		    tabItem(tabName = "oamrpAdv",
		            fluidRow(
		                column(
		                    width = 12,
		                    h2("Advantages of Online Service"),
		                    htmlOutput("oamrpAdv")
		                    
		                )
		            )),
		    tabItem(tabName = "oamrpDisadv",
		            fluidRow(
		                column(
		                    width = 12,
		                    h2("Disadvantages of Online Service"),
		                    htmlOutput("oamrpDisadv")
		                    
		                )
		            )),
		    tabItem(tabName = "oamrpPie",
		            fluidRow(
		                column(
		                    width = 12,
		                    h2("Service Beneficiary and Savings "),
		                    htmlOutput("oamrpPie")
		                    
		                )
		            )),
		    tabItem(tabName = "oamrpPre",
		            fluidRow(
		                column(
		                    width = 12,
		                    # h2("Service Beneficiary and Savings "),
		                    br(),
		                    htmlOutput("oamrpPre")
		                    
		                )
		            )),
		    tabItem(tabName = "mcfpDodged",
		            fluidRow(
		                column(
		                    width = 12,
		                    h2("TCV Comparison of Manual Vs. Online Service"),
		                    htmlOutput("mcfpDodged")
		                    
		                )
		            )),
		    
		    tabItem(tabName = "mcfpAdv",
		            fluidRow(
		                column(
		                    width = 12,
		                    h2("Advantages of Online Service"),
		                    htmlOutput("mcfpAdv")
		                    
		                )
		            )),
		    tabItem(tabName = "mcfpDisadv",
		            fluidRow(
		                column(
		                    width = 12,
		                    h2("Disadvantages of Online Service"),
		                    htmlOutput("mcfpDisadv")
		                    
		                )
		            )),
		    tabItem(tabName = "mcfpPie",
		            fluidRow(
		                column(
		                    width = 12,
		                    h2("Service Beneficiary and Savings "),
		                    htmlOutput("mcfpPie")
		                    
		                )
		            )),
		    tabItem(tabName = "mcfpPre",
		            fluidRow(
		                column(
		                    width = 12,
		                    # h2("Service Beneficiary and Savings "),
		                    br(),
		                    htmlOutput("mcfpPre")
		                    
		                )
		            ))
		    
                    
                             ),
                 
              HTML('Demo built for a2i by  <a href="http://dist-int.com/">Distributed Intelligence Inc.</a> ')
                   
                ),
   
    HTML("Demo built for a2i by Distributed Intelligence Inc")
    
)
  








