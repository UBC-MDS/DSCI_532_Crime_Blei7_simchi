#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(tidyverse)

#load data
crime_df  <- read_csv("../data/cleaned_crime.csv") %>% 
    mutate(city = as.factor(city))

ui <- fluidPage(
        titlePanel("Visualizing Crimes in US"),
        
        
        sidebarLayout(
          sidebarPanel(
            # Input: select city
            selectInput("city",
                        label = "Cities",
                        choices = crime_df$city,
                        multiple = TRUE,
                        selected = c('Cleveland','Boston')),
            #Input: select crime type
            radioButtons("crime", 
                         label = "Crimes",
                         choices = c("Homicide", "Rape", "Robbery", "Assault", "All Crimes"),
                         selected = "All Crimes"),
            #Input: select years
            sliderInput("year", 
                        label ="Year",
                        min = 1975, max = 2015,
                        value = c(1975,2015),
                        step = 1, sep = "")

          ),
          
          
          
          mainPanel(
            plotOutput("TimeSeries"),
            plotOutput("boxplot")
          )
        )
)

server <- function(input, output) {
  
  #filter data frame based on user input
  filtered <- reactive({
    crime_df %>%
      filter(year >= input$year[1],
             year <= input$year[2],
             city %in% input$city,
             category == input$crime
      )
     
  } )
  
  #Time series plot of crime rates 
  output$TimeSeries <- renderPlot({
    filtered() %>% 
        ggplot(aes(year, crime_rate)) +
        geom_line(aes(colour=city, group=city), 
                  size =1.25) + 
        theme(legend.position="top") + 
        theme_grey(base_size = 18) +
        theme(axis.text=element_text(size=18), 
              plot.title = element_text(size = 20, face = "bold"))+
        ylab("cases per 100,000 people") + 
        ggtitle(paste("Time Series of", input$crime, "Cases in U.S. from", input$year[1], "to", input$year[2]))
  })
  
  #Boxplot of crime rates  
  output$boxplot <- renderPlot({
    filtered() %>% 
      ggplot(aes(city, crime_rate)) +
      geom_boxplot(aes(colour=city, group=city), 
                   show.legend = FALSE,  
                   size =1, 
                   outlier.colour = "red", 
                   outlier.shape = 1)  + 
      ylab("cases per 100,000 people") +  
      theme_grey(base_size = 18) +
      theme(axis.text=element_text(size=18), 
            plot.title = element_text(size = 20, face = "bold"),
            axis.text.x = element_text(angle=45, hjust=1)) +
      ggtitle(paste("Distribution of", input$crime, "cases from", input$year[1], "to", input$year[2]))
  })
  
}
shinyApp(ui = ui, server = server)