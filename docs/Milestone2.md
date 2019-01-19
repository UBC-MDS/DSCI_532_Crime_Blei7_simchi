# Visualizing crimes in US

Contributors: Bailey Lei, Simon Chiu

## Milestone2

## Walkthrough of the app:
To navigate through the “Visualizing crimes in US” app, users would start with entering their inputs on the left panel:

1.	Enter the name of the city: Using the textwidge, users could either select the city from the dropdown list or just type in the name of the city
![City](https://github.com/cheukman1207/DSCI_532_Crime_Blei7_simchi/blob/master/pic/Screen_Shot_01.png)

2.	Select the type of crime: check the ones that they are interested or just select all
![CrimeType](https://github.com/cheukman1207/DSCI_532_Crime_Blei7_simchi/blob/master/pic/Screen_Shot_02.png)

3.	Select the time range: dragging the bar to select the desired year range
![Year](Https://github.com/cheukman1207/DSCI_532_Crime_Blei7_simchi/blob/master/pic/Screen_Shot_03.png)

4.	Sample results of crime comparison between Boston, Seattle and San Jose
![Results](https://github.com/cheukman1207/DSCI_532_Crime_Blei7_simchi/blob/master/pic/Screen_Shot_04.png)

## Design

### Overview
Our rationale for the set-up of this app is that we wanted to give our users the ability to perform a head-to-head comparison of the level of different crime activities between cities in the USA. 

With our design of a line chart on the top and a boxplot on the bottom, we would like to show our users a way to look at this comparison analysis from two distinct perspective: one (boxplot) is the comparison of the average level over the years for the selected cities and the other one (line chart) focuses on the analysis of the trend of the crime activity levels during the time range selected. 

### Change in Design: for a better visualization
In our first draft of the app, we had the two charts displayed side by side. However, we later on came up with a conclusion that having them displayed top to bottom will allow us to improve the interpretability of the charts, allowing more cities to be selected before the visualization loses its efficiency due to lines overlapping or bars being too thin. 
Before:
![Sketch](https://github.com/cheukman1207/DSCI_532_Crime_Blei7_simchi/blob/master/pic/Sketch.png)
After:
![Results](https://github.com/cheukman1207/DSCI_532_Crime_Blei7_simchi/blob/master/pic/Screen_Shot_004.png)

The other major change we implemented was to switch from a bar chart to a boxplot for showing the average level of crime. After discussion on the choice of chart, we decided to use a boxplot to display the medians and the quartiles instead of using a bar chart to display just the means. This new chart allows users to not only understand the average level of crime but also the volatility of such a level within the selected year(s).

Lastly, we implemented a textwidge instead of a checklist with scroll bar for our city selection. We both think this is a great choice due to the number of distinct cities in our dataset. A textwidge is way more efficient in this case since users could just type in the name of a city instead of scrolling through the entire list to find one particular city.

## Possible Improvements & the Next Step
There are several issues that we would like to address for the next iteration. 

### Cities Selection
In our app we decided to not display the state in the city selection. However, this later on became a problem that some cities with the same name cannot be distinguished. We will adjust our city list to address this.

### Maximum Number of Cities
The other feature we are considering implementing is adding a upper limit to the number of cities in our selection. This is due to a low efficiency in visualizing data with the line chart once the number of selected cities is high.
![improvement](https://github.com/cheukman1207/DSCI_532_Crime_Blei7_simchi/blob/master/pic/Screen_Shot_004.png)

