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
})
