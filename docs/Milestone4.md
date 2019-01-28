# Visualizing crimes in US

Contributors: Bailey Lei, Simon Chiu

## Milestone4

## What changes did you decide to implement given the time limit, and why do you think this is the best thing to focus on?
As we were reviewing our app this week we realized there is a must-fixed bug in our app. We fixed that major bug of our app that the data was being modified as we were doing data wrangling. This resulted in a significant problem in the line chart that the lines were going up and down. They are now smooth and for crime numbers in the same city over years, a smooth line makes a lot more sense as we fixed it. 
Before:
![Before](https://github.com/cheukman1207/DSCI_532_Crime_Blei7_simchi/blob/master/pic/Screen_Shot_04.png)
Afer:
![After](https://github.com/cheukman1207/DSCI_532_Crime_Blei7_simchi/blob/master/pic/Screen_Shot_06.png)
As we were fixing this, we also updated and improved some of the coding and documentations in the coding.

## If you were to make the app again from scratch (or some other app in general), what would you do differently?
If we were to make the app all over again. We would like to implement a map tab in addition to what we have to visualize the data (Similar to one of the examples on the Shiny Galley: https://shiny.rstudio.com/gallery/superzip-example.html). Since all these cities are located in the United States, we can put the crime data of all cities to be displayed on the map instead of selecting them one by one in the word widget. In this case, users only need to select the year range and type of crime in order to get an overall view of the distribution of crime activities.

## What were the greatest challenges you faced in creating the final product?
I think the greatest challenges we faced in creating the final product is to make the tool useful for everyone. When we were first drafting the app, we were making it with a mind that our users will be people like us, or at least people that have some level of understanding on charts and data interpretation. The team were discussing about the choice of box plot that the general public might need some help to correctly interpret the information displayed on the plot. The other discussion what about the choice of colour scheme. If we ever decide to change our audience to be the general public, then we have to be mindful with our choice of colours otherwise colour blind people might have difficulties using the app.