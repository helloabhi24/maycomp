library(plotly)
library(shiny)
library(shinydashboard)

shinyServer(function(input,output){
  g1<-reactive(tapply(as.matrix(IInd[,input$sel]),as.matrix(IInd[,input$s]),max,simplify = TRUE,na.rm=TRUE)) 
  g2<-reactive(tapply(as.matrix(IInd[,input$sel]),as.matrix(IInd[,input$s]),min,simplify = TRUE,na.rm=TRUE)) 
  g3<-reactive(tapply(as.matrix(IInd[,input$sel]),as.matrix(IInd[,input$s]),mean,simplify = TRUE,na.rm=TRUE)) 
  g4<-reactive( tapply(as.matrix(IInd[,input$sel]),as.matrix(IInd[,input$s]),median,simplify = TRUE,na.rm=TRUE))
  
  output$plot46<-renderPlot({
    g<-tapply(as.matrix(IInd[,input$sel]),as.matrix(IInd[,input$s]),mean,simplify = TRUE)
    barplot(g)
  })
  
  output$plot1<-renderPlotly({
    plot_ly(x=~Year,y=~g1(),type='bar',name='max'
    )%>%add_trace(y=~g2(),name="min"
    )%>%add_trace(y=~g3(),name="mean"
    )%>%add_trace(y=~g4(),name='Median'
    )%>%layout(yaxis=list(title='Count'),barmode='group')})
  
  output$plot2<-renderPlotly({
    plot_ly(data11,x=~Year,y=~g1(),mode='lines',name='max'
    )%>%add_trace(y=~g2(),name="min"
    )%>%add_trace(y=~g3(),name="mean"
    )%>%add_trace(y=~g4(),name='Median'
    )%>%layout(yaxis=list(title='Count'),barmode='group')})
  
  output$plot3<-renderPlotly({p3})
  output$plot4<-renderPlotly({p4})
  output$plot5<-renderPlotly({p6})
  output$plot6<-renderPlotly({p5})
  output$plot7<-renderPlotly({q1})
  output$plot8<-renderPlotly({q2})
  output$plot9<-renderPlotly({q3})
  output$plot10<-renderPlotly({q14})
  output$plot11<-renderPlotly({p15})
  output$plot12<-renderPlotly({plo})
  output$plot13<-renderPlotly({plo1})
  output$plot14<-renderPlotly({plo11})
  
  output$max1<-renderValueBox({
    valueBox(
      value = g1(),
      subtitle = "Max of 2013",icon("arrow-up")
    )
  })
  output$max11<-renderValueBox({
    valueBox(
      value = g1()[2],
      subtitle = "Max of 2014",icon("arrow-up")
    )
  })
  output$max111<-renderValueBox({
    valueBox(
      value = g1()[3],
      subtitle = "Max of 2015",icon("arrow-up")
    )
  })
  output$min1<-renderValueBox({
    valueBox(
      value = g2(),
      subtitle = "Min of 2013",icon("arrow-down")
    )
  })
  output$min11<-renderValueBox({
    valueBox(
      value = g2()[2],
      subtitle = "Min of 2014",icon("arrow-down")
    )
  })
  output$min111<-renderValueBox({
    valueBox(
      value = g2()[3],
      subtitle = "Min of 2015",icon("arrow-down")
    )
  })
  output$mean1<-renderValueBox({
    valueBox(
      value = round(g3(),2),
      subtitle = "Mean of 2013",icon("angle-double-right")
    )
  })
  output$mean11<-renderValueBox({
    valueBox(
      value = round(g3()[2],2),
      subtitle = "Mean of 2014",icon("angle-double-right")
    )
  })
  output$mean111<-renderValueBox({
    valueBox(
      value = round(g3()[2],2),
      subtitle = "Mean of 2015",icon("angle-double-right")
    )
  })
  
  
})


