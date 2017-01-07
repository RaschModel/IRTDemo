shinyServer(function(input, output) {
  output$IRF <- renderPlot({
  	a1=input$a1
  	b1=input$b1
  	c1=input$c1
  	t<-seq(-4,4,by=.1)
  	p<-c1+(1-c1)*(1/(1+exp(-a1*(t-b1))))
  	plot(t,p,ylim=c(0,1),main="Item Response Function",type="l",lwd=3,xlab=expression(paste("Person Location ",theta)),ylab="Probability of Correct Responses")
 })
 
output$IIF <- renderPlot({
  	a1=input$a1
  	b1=input$b1
  	c1=input$c1
  	t<-seq(-4,4,by=.1)
  	p<-c1+(1-c1)*(1/(1+exp(-a1*(t-b1))))
  	In=a1^2*p*(1-p)
   	plot(t,In,main="Item Information Function",type="l",lwd=3,xlab=expression(paste("Person Location ",theta)),ylab="Information (Precision)")
 })

output$PRF <- renderPlot({
  a1=input$a1
  c1=input$c1
  theta=input$theta
  delta<-seq(-4,4,by=.1)
  p<-c1+(1-c1)*(1/(1+exp(-a1*(theta-delta))))
  plot(delta,p,main="Person Response Function",type="l",lwd=3,xlab=expression(paste("Item Location ",delta)),ylab="Probability of Correct Responses")
})

output$IRF2 <- renderPlot({
  a1=input$a1
  b1=input$b1
  c1=input$c1
  a2=input$a2
  b2=input$b2
  c2=input$c2
  a3=input$a3
  b3=input$b3
  c3=input$c3
  t<-seq(-4,4,by=.1)
  p1<-c1+(1-c1)*(1/(1+exp(-a1*(t-b1))))
  p2<-c2+(1-c2)*(1/(1+exp(-a2*(t-b2))))
  p3<-c3+(1-c3)*(1/(1+exp(-a3*(t-b3))))
  plot(t,p1,ylim=c(0,1),main="Item Response Functions",col="orange",type="l",lwd=3,xlab=expression(paste("Person Location ",theta)),ylab="Probability of Correct Responses")
  lines(t,p2,lwd=3,col="blue")
  lines(t,p3,lwd=3,col="red")
  legend("topleft", legend=c("Item 1", "Item 2","Item 3"),col=c("orange","blue", "red"), lwd=3, cex=1.5,box.lty=0)
})

output$TCC <- renderPlot({
  a1=input$a1
  b1=input$b1
  c1=input$c1
  a2=input$a2
  b2=input$b2
  c2=input$c2
  a3=input$a3
  b3=input$b3
  c3=input$c3
  t<-seq(-4,4,by=.1)
  p1<-c1+(1-c1)*(1/(1+exp(-a1*(t-b1))))
  p2<-c2+(1-c2)*(1/(1+exp(-a2*(t-b2))))
  p3<-c3+(1-c3)*(1/(1+exp(-a3*(t-b3))))
  p<-p1+p2+p3
  plot(t,p,ylim=c(0,3),main="Test Characteristic Curve",type="l",lwd=3,xlab=expression(paste("Person Location ",theta)),ylab="Sum of Probability of Correct Responses")
})

output$TIF <- renderPlot({
  a1=input$a1
  b1=input$b1
  c1=input$c1
  a2=input$a2
  b2=input$b2
  c2=input$c2
  a3=input$a3
  b3=input$b3
  c3=input$c3
  t<-seq(-4,4,by=.1)
  p1<-c1+(1-c1)*(1/(1+exp(-a1*(t-b1))))
  p2<-c2+(1-c2)*(1/(1+exp(-a2*(t-b2))))
  p3<-c3+(1-c3)*(1/(1+exp(-a3*(t-b3))))
  In1=a1^2*p1*(1-p1)
  In2=a2^2*p2*(1-p2)
  In3=a3^2*p3*(1-p3)
  In<-In1+In2+In3
  plot(t,In,main="Test Information Function",type="l",lwd=3,xlab=expression(paste("Person Location ",theta)),ylab="Test Information (Precision)")
})
})
