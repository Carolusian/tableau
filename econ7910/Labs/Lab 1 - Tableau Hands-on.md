
# Lab 1: Tableau Hands-on: Create Your First Visualization Charts with Tableau

This lab guide will direct you through some basic steps that you can run on the "gapminder-data" data set using Tableau. 

If you encounter any problems while working through these steps, rise your questions to the {PROBABLY A TALK PAGE ON WIKI} and also, don't be afraid to ask your classmates for help! 

## Connect to the data set

Please go to [this link](https://drive.google.com/open?id=1ANHgD9B3jp-xoJeCjjqjxGJQWXmIiueK-GqymUXftUc) to download the "gapminder-data" csv file.

Then connect to the data set:
* Open Tableau
* Create a new workbook (File -> New)
* In the workbook, add the first CSV file (Connect to Data -> To a File -> More -> gapminder-data.csv)

## Look at the data

Before plot any visualization charts, it is a good idea to get a feel for what the data set looks like. 

In real world cases, data descriptions are normally not provided together with the original data sets. So you probably need to infer what each dimension and measure means from the original data. 

To get started, we suggest you use the Data Source tab in Tableau to look at the dimension and measure names and the according values to check if you understand the meanings of each of them. In our case, the names are not abbreviated, so it would be quite easy to infer what the data is about. 

Then, there are two key dimensions, which are `country` and `year`, need your attention as they are representing space and time. It is recommended to use the Row and Column shelves and the Marks Card in a Tableau worksheet to determine:

1. How many unique countries are in the data set?
2. How many years of data are in the data set and, what is the time span of the years.

First, place `country` in Rows shelf as a dimension to see what countries are represented in our data set. If you turn that `country` pill into a measure, you can aggregate it by "Count (Distinct)" to see how many countries are there in total. 

Next, do the same for `year`. Unlike `country`, the value in `year` dimension are represented in numbers. You might also be curious about which years are included in this data set. Turn the `year` pill into a dimension and, all the years included in the data set will be displayed in a table in ascending order. By looking at the minimum value and the maximum value in the table, you will get an idea of the time range of the `year` dimension.

{ TBC: add outliners in `life_expectany` and use scatter plot to exclude the outliners? }

## Hands-on with Tableau visualization features

### How did the world population grow?

Population has become one of the most important issue in socio-economic development worldwide. In this section, we will focus on plotting a simple line chart to show how the size of the world population has grown over time. 

Here are the steps:
* Create a new worksheet (Menu: Worksheet -> New Worksheet);
* Place `year` in Column shelf, right-click and change the pill to continuous dimension;
* Place `population` in Row shelf and, you will see the line chart.

### How did the population of each country change?

Apart from the total population growth, we are also interested in how each country's population change contributed to the whole.

One way is to use an area chart:
* Duplicate the above worksheet;
* Drag `country` onto "Color" in Marks Card;
* Change the dropdown menu in Marks Card from "Automatic" to "Area". 

### How did babies per woman change in the world?

Babies per woman is also known as TFR (total fertility rate). In this section, we will explore two ways to visualize the trend of TFR change. 

The first way, similar to the previous visualization about population change:
* Create a new worksheet (Menu: Worksheet -> New Worksheet);
* Place `year` in Column shelf, right-click and change the pill to continuous dimension;
* Place `children_per_woman` in Row shelf and, right-click the pill and update "Measure (Sum)" to "Measure (Average)";
* You will see the line chart.

Besides a simple line chart, you might also be curious about how TFR changes in each country. So the second way we choose here is to use a map visualzation:
* Create a new worksheet (Menu: Worksheet -> New Worksheet);
* Place `country` in Column shelf;
* Drag `children_per_woman` onto "Color" in Marks Card and, right-click the pill and, update "Measure (Sum)" to "Measure (Average)";
* Select "maps" in the "Show Me" menu;
* Place `year` in Pages Chard;
* Under the "year" Card, there is a play (right arrow) button, click it to see how the map changes.

### How did working hours differ in each country?

The "996" working hour system is a work schedule commonly practiced by some companies in China, and "996" became a well-known keyword in recent years. 

Here, we may be interested in how the working hours in China ranked among all the countries in the most recent year. This can be achieved using a sorted bar chart.

Unfortunately, the most recent year which having this data for China is 2016. So we need to filter the `year` dimension to 2016, here are all the steps:
* Create a new worksheet (Menu: Worksheet -> New Worksheet);
* Place `country` in Column shelf;
* Right-click `working_hours_weekly`, change Data Type to Number (decimal); 
* Place `working_hours_weekly` in Row shelf and, right-click the pill and update "Measure (Sum)" to "Measure (Average)";
* Place `year` in Filters Card and, select "2016" in the popup window;
* Sort the bars in the chart by clicking the sort icon on the y-axis to display the bars in descending order;
* Check the ranking of China's average working hours.

### How did income and life expectancy differ in each country?

Multiple measures can be placed on Row shelf at the same time. After placing `AVG(income)` and `AVG(life_expectancy)` to the Row shelf with `AVG(working_hours_weekly)`, you will see three bar charts aligned in three different rows in the table.  






  
 

