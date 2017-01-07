shinyServer(function(input, output) {
  output$IRF <- renderPlot({
  	a=input$a
  	b=input$b
  	c=input$c
  	t<-seq(-4,4,by=.1)
  	p<-c+(1-c)*(1/(1+exp(-a*(t-b))))
  	plot(t,p,ylim=c(0,1),main="Item Response Function",type="l",xlab=expression(paste("Person Location ",theta)),ylab="Probability of Correct Responses")
 })
 
output$IIF <- renderPlot({
  	a=input$a
  	b=input$b
  	c=input$c
  	t<-seq(-4,4,by=.1)
  	p<-c+(1-c)*(1/(1+exp(-a*(t-b))))
  	In=a^2*p*(1-p)
   	plot(t,In,main="Item Information Function",type="l",xlab=expression(paste("Person Location ",theta)),ylab="Information (Precision)")
 })

output$PRF <- renderPlot({
  a=input$a
  c=input$c
  theta=input$theta
  delta<-seq(-4,4,by=.1)
  p<-c+(1-c)*(1/(1+exp(-a*(theta-delta))))
  plot(delta,p,main="Person Response Function",type="l",xlab=expression(paste("Item Location ",delta)),ylab="Probability of Correct Responses")
})

output$IRF2 <- renderPlot({
  a1=input$a1
  b1=input$b1
  c1=input$c1
  a2=input$a2
  b2=input$b2
  c2=input$c2
  t<-seq(-4,4,by=.1)
  p<-c+(1-c)*(1/(1+exp(-a*(t-b))))
  p1<-c1+(1-c1)*(1/(1+exp(-a1*(t-b1))))
  p2<-c2+(1-c2)*(1/(1+exp(-a2*(t-b2))))
  plot(t,p,ylim=c(0,1),main="Item Response Functions",type="l",xlab=expression(paste("Person Location ",theta)),ylab="Probability of Correct Responses")
  lines(t,p1,col="red")
  lines(t,p2,col="blue")
})
})
