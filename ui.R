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
              min = 0,
              max = 1,
              value =0)
  ),
  mainPanel(
  plotOutput("IRF"),
  plotOutput("IIF"),
  plotOutput("PRF"))
)
))
