# Visualizing crimes in US

Contributors: Bailey Lei, Simon Chiu

## Milestone4

### What changes did you decide to implement given the time limit, and why do you think this is the best thing to focus on?
As we were reviewing our app, we realized that there was a major bug that needed to be fixed. Our data was being modified as we were doing data wrangling in our coding. This resulted in a significant problem in the line chart such that the lines were going up and down. At the beginning, we thought it looked suspicious but we have since confirmed that it is problematic. The corrected chart has smooth lines now and it is more conforming to our belief that crime numbers in the same city over time should stay stable, as shown in the fixed chart.

Before:
![Before](https://github.com/cheukman1207/DSCI_532_Crime_Blei7_simchi/blob/master/pic/Screen_Shot_07.png)
After:
![After](https://github.com/cheukman1207/DSCI_532_Crime_Blei7_simchi/blob/master/pic/Screen_Shot_06.png)
As we were fixing this, we also updated and improved some of our code and documentation in the code.

This bug took over as our number one task despite the fact that we only had limited time because it was a critical issue that affected the accuracy of the information that we were reporting to our users. We believe that we will be more careful with data as we gain more experience from projects like this. Other issues that we still have on our list include adding a data tab for raw data, allowing users to select/deselect group(s) of cities (e.g. all the cities in a certain state), and adding an "About" tab with instructions on how to use the app or how to correctly interpret the information displayed on a box plot.


### If you were to make the app again from scratch (or some other app in general), what would you do differently?
If we were to make the app all over again, we would like to implement a “Map” tab in addition to what we have currently to visualize the data (similar to one of the examples on the Shiny Galley: https://shiny.rstudio.com/gallery/superzip-example.html). Since all of the cities in our data are located in the United States, we can plot the crime data of all cities on the map of the United States instead of selecting them one by one in the word widget. In this case, users only need to select the year range and type of crime in order to get an overall view of the distribution of criminal activities.

### What were the greatest challenges you faced in creating the final product?
The greatest challenges we faced in creating the final product was the limited amount of time we were given. As this assignment fell within the same week as our quizzes, we only had a limited amount of time to make sure that our new implementation was working properly. Luckily our team started early this week so that we were able to identify and fix the major bug early in the week, giving us time to perform testing and add other final touches in order to finalize our app.
