library(plotly)
library(shiny)
library(shinydashboard)
shinyUI(
  dashboardPage(skin="purple",
    dashboardHeader(title = h2(strong("PREDICTING ACADEMIC TRENDS AND PATTERNS IN EDUCATIONAL DATABASE"),align="center"),titleWidth = 1300) ,
    dashboardSidebar(
      sidebarMenu(
        menuItem("2013",tabName = "about",icon = icon("sun-o"),
                 menuSubItem("2013",tabName = "2013"),
                 menuSubItem("2013 IInd Sem",tabName = "20133"),
                 menuSubItem("2013 year",tabName = "201333")),
        menuItem("2014",tabName = "Data",icon = icon("sun-o"),
                 menuSubItem("2014",tabName = "2014"),
                 menuSubItem("2014 IInd Sem",tabName = "20144"),
                 menuSubItem("2014 year",tabName = "201444")),
        menuItem("2015",tabName = "Data1",icon = icon("sun-o"),
                 menuSubItem("2015",tabName = "2015"),
                 menuSubItem("2015 IInd Sem",tabName = "20155"),
                 menuSubItem("2015 year",tabName = "201555")),
        menuItem("2016",tabName = "Data11",icon = icon("sun-o"),
                 menuSubItem("2016",tabName = "2016"),
                 menuSubItem("2016 IInd Sem",tabName = "20166"),
                 menuSubItem("2016 year",tabName = "201666")),
        menuItem("Chart",tabName = "box",icon=icon("line-chart"))
      )
    ) ,
    dashboardBody(
      tabItems(
        tabItem(
          tabName = "2013",plotlyOutput("plot3"), h3("2013",align="center") ),
        tabItem(
          tabName = "20133",plotlyOutput("plot5"),h3("2013 IInd Sem",align="center") ),
        tabItem(
          tabName = "201333",plotlyOutput("plot7"),h3("2013 Year",align="center") ),
        
        tabItem(
          tabName = "2014",plotlyOutput("plot4"), h3("2014",align="center") ),
        tabItem(
          tabName = "20144",plotlyOutput("plot6") ,h3("2014 IInd Sem",align="center")),
        tabItem(
          tabName = "201444",plotlyOutput("plot8"),h3("2014 Year",align="center") ),
        tabItem(
          tabName = "2015",plotlyOutput("plot10"), h3("2015",align="center") ),
        tabItem(
          tabName = "20155",plotlyOutput("plot11") ,h3("2015 IInd Sem",align="center")),
        tabItem(
          tabName = "201555",plotlyOutput("plot9"),h3("2015 Year",align="center") ),
        tabItem(
          tabName = "2016",plotlyOutput("plot12"), h3("2016",align="center") ),
        tabItem(
          tabName = "20166",plotlyOutput("plot13") ,h3("2016 IInd Sem",align="center")),
        tabItem(
          tabName = "201666",plotlyOutput("plot14"),h3("2016 Year",align="center") ),
        tabItem(tabName = "box" ,
                fluidRow(valueBoxOutput("max1",width = 3),valueBoxOutput("max11",width = 3),valueBoxOutput("max111",width = 3) ),
                fluidRow(valueBoxOutput("min1",width=3),valueBoxOutput("min11",width=3),valueBoxOutput("min111",width=3) ), 
                fluidRow(valueBoxOutput("mean1",width=3),valueBoxOutput("mean11",width=3),valueBoxOutput("mean111",width=3) ),selectInput("sel","Select One",choices = colnames(IInd[,c(5:23,25:27,29:53)])),
                fluidRow(box(title = "Mean MEdian MOde"
                             
                             ,
                             plotlyOutput("plot1"),status = "danger",solidHeader = T,collapsible = T),
                         box(title = "Line",selectInput("s","NO Touch",choices = colnames(IInd[,3]) ),plotlyOutput("plot2"),status = "success",solidHeader = T,collapsible = T))
        )
      )
    )
  )
)
