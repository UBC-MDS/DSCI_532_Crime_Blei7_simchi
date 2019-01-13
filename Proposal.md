# Visualizing crimes in US

Contributors: Bailey Lei, Simon Chiu


### Project overview
Crimes in the United States have been a hot topic for the past years and the general public is questioning the effectiveness on certain policies like immigration and gun controls. While it has been reported that the overall violent crime has been decreasing in the U.S., but this doesn’t not necessarily mean the decrease are happening in all cities. Gaining insights into the change in crime rates within each city will be important for local municipal in implementing policies to address the problems, but also allowing the general public greater awareness of the crimes rates among each cities. Here, we propose a visualization application that will allow its user to compare crimes between cities as well as the trend in crime rate among those cities. The user will be able to filter by cities, crime type and the period from 1975-2015.

### Data Description
The dataset is compiled by the [The Marshall Project](https://github.com/themarshallproject/city-crime), in which the data is collected from 68 police jurisdictions across the United States between 1975 to 2015. The dataset consists of 2829 records, covering four types of violent crimes ,such as rape, homicides, robbery, and aggravated assault. Our application will be utilizing the following relevant variables for analysis and visualization:

| **Variable Name** | **Description** |
|-|-|
| *year* | Year the data are collected |
| *department_name* | Identify city |
| *homs_per_100k* | Homicide cases per 100,000 people |
| *rape_per_100k* | Rape cases per 100,000 people |
| *rob_per_100k* | Robberies cases per 100,000 people |
| *agg_ass_per_100k* | Aggravated assault cases per 100,000 people |
| *violent_per_100k* | Total violent crimes (rape, homicides, robbery, and aggravated assault) per 100,000 people |


### Usage Scenario and Tasks
Woody and Claudia are immigrating to the USA with their children and they are looking for a city with a low crime rate in order to raise their three girls in a safe environment. Woody and Claudia want to be able to explore a dataset in order to compare the public order of different cities and identify some of the safest cities among the cities that they are interested. When Woody and Claudia log on to the "Crime rate" app, they will see an overview of all four types of criminal activities. They could then filter the data to focus on their potential choices for head-to-head comparisons, and/or rank them by a certain type of crime. Claudia is particularly concerned about raping since they are raising three girls. She then finds out that some of her favorite cities such as New York and Washington D.C. are not as safe as she thought compared to other cities and therefore taking them off from her list.

### Description of Your App and Sketch
The app contains a landing page that shows the distribution of the crime rates. There is a bar chart showing the numbers of crime for a full year averaged over the selected years for the selected cities and a line chart showing the number of crime per 100k population over the selected years. Lines are colored coded according to the cities that are being selected. Both charts will also show the national average number for comparison. From a dropdown list, users can filter out the variables from the distribution display, by cities (e.g. only checking New York, Los Angeles, Seattle), type of crime (e.g. only show robbing), and finally by the range of time (e.g. the past decade). Users can compare the crime rate distribution of different cities by checking the charts on the panel.

![Sketch](https://github.com/cheukman1207/DSCI_532_Crime_Blei7_simchi/blob/master/pic/Sketch.png)
