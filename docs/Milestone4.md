# Visualizing crimes in US

Contributors: Bailey Lei, Simon Chiu

## Milestone4

### What changes did you decide to implement given the time limit, and why do you think this is the best thing to focus on?
As we were reviewing our app recently, we realized that there is a major bug in our app that needs to be fixed. It was a problem that our data was being modified as we were doing data wrangling in our coding. This resulted in a significant problem in the line chart that the lines were going up and down. At the beginning, we think it looks suspicious but now it is a confirmed problem. The fixed chart has smooth lines now and it makes a lot more sense as we believe that crime numbers in the same city over years should stay stable as shown in the fixed chart.

Before:
![Before](https://github.com/cheukman1207/DSCI_532_Crime_Blei7_simchi/blob/master/pic/Screen_Shot_07.png)
After:
![After](https://github.com/cheukman1207/DSCI_532_Crime_Blei7_simchi/blob/master/pic/Screen_Shot_06.png)
As we were fixing this, we also updated and improved some of the coding and documentations in the coding.

This bug took over as our number one task despite the fact that we only have a limited time because it is a critical issue that affects the accuracy of the information that we are reporting to our users. We believe that we will be more careful with data as we gain more experience from projects like this. 
Other issues that we still have on our list includes adding a data tab for raw data, allowing users to select/deselect group(s) of cities (e.g. selecting/deselecting all the cities in a certain state), and adding a "About" tab to include instructions on how to use the app or how to correctly interpret the information displayed on a box plot. 

### If you were to make the app again from scratch (or some other app in general), what would you do differently?
If we were to make the app all over again. We would like to implement a map tab in addition to what we have currently to visualize the data (Similar to one of the examples on the Shiny Galley: https://shiny.rstudio.com/gallery/superzip-example.html). Since all of the cities in our data are located in the United States, we can plot the crime data of all cities on the map of the United States instead of selecting them one by one in the word widget. In this case, users only need to select the year range and type of crime in order to get an overall view of the distribution of crime activities.

### What were the greatest challenges you faced in creating the final product?
I think the greatest challenges we faced in creating the final product is the limited amount of time. With our quizes are coming in a few days, we only have a limited time to make sure our new implementation is working properly. Luckily our team started early this week so that we got the major bug fixed early in the week, and then we can focus on testing and adding other final touches in order to finalize our app. 