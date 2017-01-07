shinyUI(fluidPage(
  titlePanel("Item Response Theory"),
  sidebarLayout(sidebarPanel( "Parameters",
  sliderInput("a","a",
                  min = -3,
                  max = 3,
                  value = 1),
  sliderInput("b","b",
                  min = -3,
                  max = 3,
                  value = 0),
  sliderInput("c","c",
                  min = 0,
                  max = 1,
                  value =0),
  sliderInput("theta","theta",
              min = -3,
              max = 3,
              value =0)
  ),
  mainPanel(
    tabsetPanel(
      tabPanel("A Single Item/Person",plotOutput("IRF"),tags$br(),
               plotOutput("IIF"),tags$br(),plotOutput("PRF")),
      tabPanel("Three Items"))
))
))
