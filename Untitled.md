Data Products Course Project
========================================================
author: datafeelings
date: 22.02.2015

Coffee Cups
========================================================

This course project is a simple test of the capabilities of Shiny.

Its topic is coffee consumption.

Nowadays coffee has become very popular everywhere in the world. 
However, drinking too much coffee can be unhealthy. 
You can check how your coffee consumption compares to the average level in your country by answering the simple questions of the app:

- In which country you live
- How many cups of coffee per day you drank last week

Structure and Functions
===
The app consists of three files:
  1. "global.R" reads the dataset about the coffee consumption in the countries of the world. It is a separate file so that UI can get a list of countries from it, and Server can get the correspondent coffee consumption levels
  2. "ui.R" displays the user interface with input controls and output results
  3. "server.R" calculates the total and average consumption based on user input, and compares it to the country average


Server.R
========================================================
For example, the user comes from Germany and has entered the following numbers of cups per day: 
  3, 3, 4, 6, 5, 3, 5 - values are provided by the slider from ui.r
  
Then server.r will calculate the average number of cups per day:


```r
      ave = (3 + 3 + 4 + 6 + 5 + 3 + 5)/7
      ave = round (ave, digits = 1)
      ave
```

```
[1] 4.1
```
Then compare it with the value it got for Germany from global.r (3.8 cups per day) and provide an answer. In this case 

```
You are drinking too much coffee!
```

Data Sources
========================================================

- http://en.wikipedia.org/wiki/List_of_countries_by_coffee_consumption_per_capita
- http://www.hsph.harvard.edu/news/multimedia-article/facts/
