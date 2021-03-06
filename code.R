library(readxl)
IInd <- read_excel("E:/MCA assignment1/IInd.xlsx", 
                   col_types = c("numeric", "text", "numeric", 
                                 "text", "numeric", "numeric", "numeric", 
                                 "numeric", "numeric", "numeric", 
                                 "numeric", "numeric", "numeric", 
                                 "numeric", "numeric", "numeric", 
                                 "numeric", "numeric", "numeric", 
                                 "numeric", "numeric", "numeric", 
                                 "numeric", "text", "numeric", "numeric", 
                                 "numeric", "text", "numeric", "numeric", 
                                 "numeric", "numeric", "numeric", 
                                 "numeric", "numeric", "numeric", 
                                 "numeric", "numeric", "numeric", 
                                 "numeric", "numeric", "numeric", 
                                 "numeric", "numeric", "numeric", 
                                 "numeric", "numeric", "numeric", 
                                 "numeric", "numeric", "numeric", 
                                 "numeric", "numeric"))
View(IInd)
library(readxl)
IInd_2016 <- read_excel("E:/IInd_2016.xlsx")
View(IInd_2016)
str(IInd_2016)
g<-aggregate(`DAA/INT`~Year,IInd,FUN = max )
g
g2<-apply(IInd$`DAA/INT`,list(IInd$Year),max)
?apply

tapply(IInd$OS_INT,IInd$Year,max)
g2<-as.matrix(g2)
g2[,2]
gg<-aggregate(OS_INT~Year,IInd,FUN = min )
ggg<-aggregate(OS_INT~Year,IInd,FUN = min )
gggg<-aggregate(OS_INT~Year,IInd,FUN = mean )
gggg
library(plotly)
library(ggplot2)
Year<-g$Year
Year
ggf<-IInd$Year
length(ggf) 
length(IInd$OS_INT)
max1<-g$OS_INT
max1
min1<-gg$OS_INT 
mean1<-gggg$OS_INT
mean1
median1<-ggg$OS_INT
data11<-data.frame(Year,g)
p1<-plot_ly(data11,x=~Year,y=~max1,type='bar',name='max'
)%>%add_trace(y=~min1,name="min"
)%>%add_trace(y=~mean1,name="mean"
)%>%add_trace(y=~median1,name='Median'
)%>%layout(yaxis=list(title='Count'),barmode='group')
(p1)




View(IInd)
sub1<-subset(IInd,Year=='2013')
sub2<-subset(IInd,Year=='2014')
sub3<-subset(IInd,Year=='2015')
sub4<-subset(IInd_2016,YEAR=='2016')
su<-sub4[,c(6:19)]
su1<-names(su[,c(1:14)])
fac<-factor(su1)
ma<-lapply(1:14,function(i){
  max(su[,i])
})
maxx<-lapply(1:14,function(i){
  min(su[,i])
} )
data.6<-data.frame(fac,ma,maxx)
plo<-plot_ly(x=~fac,y=ma,type = 'bar',name='Max'
)%>%add_trace(y=~maxx,name='Min'
)%>%layout(xaxis=list(title='2016'),yaxis=list(title='value'),barmode='group')
plo

su11<-sub4[,c(21:34)]
View(su11)
su12<-names(su11[,c(1:14)])
su1
fac1<-factor(su12)
ma1<-lapply(1:14,function(i){
  max(su11[,i])
})
maxx1<-lapply(1:14,function(i){
  min(su11[,i])
} )
data.7<-data.frame(fac1,ma1,maxx1)
plo1<-plot_ly(x=~fac1,y=ma1,type = 'bar',name='Max'
)%>%add_trace(y=~maxx1,name='Min'
)%>%layout(xaxis=list(title='2016'),yaxis=list(title='value'),barmode='group')
plo1

su111<-sub4[,c(6:14,21:34)]
View(su111)
su112<-names(su111[,c(1:23)])
fac11<-factor(su112)
ma11<-lapply(1:23,function(i){
  max(su111[,i])
} )
maxx11<-lapply(1:23,function(i){
  min(su111[,i])
} )
data.8<-data.frame(fac11,ma11,maxx11)
plo11<-plot_ly(x=~fac11,y=ma11,type = 'bar',name='Max'
)%>%add_trace(y=~maxx11,name='Min'
)%>%layout(xaxis=list(title='2016'),yaxis=list(title='value'),barmode='group')
plo11

b1<-sub1[,c(5:11,13:19,21,23,29:35,37:43,45)]
b2<-names(b1[,c(1:31)])
r<-factor(b2)
g3<-lapply(1:15,function(i){
  max(b1[,i])
})
g4<-lapply(1:15,function(i){
  min(b1[,i])})
data.1<-data.frame(r,g3,g4)
q1<-plot_ly(x=~r,y=g3,type = 'bar',name='Max'
)%>%add_trace(y=~g4,name='Min'
)%>%layout(xaxis=list(title='2013'),yaxis=list(title='value'),barmode='group')
q1

b2<-sub2[,c(5:11,13:19,21,23,29:35,37:43,45)]
View(b1)
b3<-names(b2[,c(1:31)])
r1<-factor(b3)
g4<-lapply(1:15,function(i){
  max(b2[,i])
})
g5<-lapply(1:15,function(i){
  min(b2[,i])})
data.2<-data.frame(r1,g4,g5)
q2<-plot_ly(x=~r1,y=g4,type = 'bar',name='Max'
)%>%add_trace(y=~g5,name='Min'
)%>%layout(xaxis=list(title='2014'),yaxis=list(title='value'),barmode='group')
q2

b22<-sub3[c(-2,-18),c(5:11,13:19,21,23,29:35,37:43,45)]
View(b22)
b32<-names(b22[,c(1:31)])
r12<-factor(b32)
g42<-lapply(1:15,function(i){
  max(b22[,i])
})
g25<-lapply(1:15,function(i){
  min(b22[,i])})
data.5<-data.frame(r12,g42,g25)
q3<-plot_ly(x=~r12,y=g42,type = 'bar',name='Max'
)%>%add_trace(y=~g25,name='Min'
)%>%layout(xaxis=list(title='2015'),yaxis=list(title='value'),barmode='group')
q3

b31<-sub3[-2,c(5:11,13:19,21,23,29:35,37:43,45)]
View(b31)
b32<-names(b31[,c(1:31)])
r6<-factor(b32)
g33<-lapply(1:15,function(i){
  max(b31[,i])
})
g34<-lapply(1:15,function(i){
  min(b31[,i])})
data.3<-data.frame(r6,g33,g34)
q14<-plot_ly(x=~r6,y=g33,type = 'bar',name='Max'
)%>%add_trace(y=~g34,name='Min'
)%>%layout(xaxis=list(title='2015'),yaxis=list(title='value'),barmode='group')
q14

aa<-sub1[,c(29:35,37:43,45)]
str(aa)
aa1<-names(aa[,c(1:15)])
z<-factor(aa1)
a1<-lapply(1:15,function(i){
  max(aa[,i])
})

a2<-lapply(1:15,function(i){
  min(aa[,i])
})
data11<-data.frame(z,a1,a2)

p6<-plot_ly(x=~z,y=a1,type = 'bar',name='Max'
)%>%add_trace(y=~a2,name='Min'
)%>%layout(xaxis=list(title='2013'),yaxis=list(title='value'),barmode='group')
q1
p6
aa1<-sub2[,c(29:35,37:43,45)]
str(aa)
aa12<-names(aa[,c(1:15)])
z1<-factor(aa12)
a12<-lapply(1:15,function(i){
  max(aa1[,i])
})
a1
a22<-lapply(1:15,function(i){
  min(aa1[,i])
})
data111<-data.frame(z1,a12,a22)

p5<-plot_ly(x=~z1,y=a12,type = 'bar',name='Max'
)%>%add_trace(y=~a22,name='Min'
)%>%layout(xaxis=list(title='2014'),yaxis=list(title='value'),barmode='group')
p5

aa11<-sub3[c(-2,-18),c(29:35,37:43,45)]
View(aa11)
str(aa)
aa121<-names(aa[,c(1:15)])
z11<-factor(aa121)
a121<-lapply(1:15,function(i){
  max(aa11[,i])
})
a1
a221<-lapply(1:15,function(i){
  min(aa11[,i])
})
data1111<-data.frame(z11,a121,a221)

p15<-plot_ly(data1111,x=~z11,y=a121,type = 'bar',name='Max'
)%>%add_trace(y=~a221,name='Min'
)%>%layout(xaxis=list(title='2015'),yaxis=list(title='value'),barmode='group')
p15
su1<-sub2[,c(5:11,13:19,21,23)]
su<-sub1[,c(5:11,13:19,21:23)]
nam1<-names(su1[,c(1:15)])
nam<-names(su[,c(1:15)])
x2<-factor(nam1)
x1<-factor(nam)
lp1<-lapply(1:15,function(i){
  max(su[,i])
})

lp12<-lapply(1:15,function(i){
  max(su1[,i])
})
lp21<-lapply(1:15,function(i){
  min(su[,i])
})
lp22<-lapply(1:15,function(i){
  min(su1[,i])
})

p3<-plot_ly(x=~x1,y=lp1,type = 'bar',name='Max'
)%>%add_trace(y=~lp2,name='Min'
)%>%layout(xaxis=list(title='2013'),yaxis=list(title='value'),barmode='group')
p3

p4<-plot_ly(x=~x2,y=lp12,type = 'bar',name='Max'
)%>%add_trace(y=~lp21,name='Min'
)%>%layout(xaxis=list(title='2014'),yaxis=list(title='value'),barmode='group')

p3
p4
