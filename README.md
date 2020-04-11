# MechaCar

## Module Overview
In R-Analysis, we applied our understanding of statistics and hypothesis testing to analyze a series of datasets from the automotive industry. Our analysis includes visualizations, statistical tests, and interpretation of the results. All of our statistical analysis and visualizations are written in the R programming language.
Throughout the module, we extract, transform, and load (ETL) data; visualize the data; and analyze the data using R. Additionally, we learned a variety of statistical tests, their real-world application in data science, and their implementation in R.

## Sources:
•Software: R, RStudio, Rlibraries such as Tidyverse
•Data Source: demo.csv, demo.json, demo2.csv, mpg_modified, used_car_data, Vehicle_Data, MechaCar_mpg.csv, Suspension_coil.csv

## Objectives:
•Load, clean up, and reshape datasets using tidyverse in R.
•Visualize datasets with basic plots such as line, bar, and scatter plots using ggplot2.
•Generate and interpret more complex plots such as boxplots and heatmaps using ggplot2.
•Plot and identify distribution characteristics of a given dataset.
•Formulate null and alternative hypothesis tests for a given data problem.
•Implement and evaluate simple linear regression and multiple linear regression models for a given dataset.
•Implement and evaluate the one-sample t-Tests, two-sample t-Tests, and analysis of variance (ANOVA) models for a given dataset.
•Implement and evaluate a chi-squared test for a given dataset.
•Identify key characteristics of A/B and A/A testing.
•Determine the most appropriate statistical test for a given hypothesis and dataset.


## Benefits of R
R is a versatile and extensible programming language with many benefits. One of the benefits of using an interpreted programming language such as R (or Python) is that the analysis scripts are written in plaintext. The versions of plaintext files are easy to control using tools such as Git, which means that R analysis scripts (or RScripts) are highly reproducible and easy to share with peers and collaborators.

Another benefit to using R is that the R programming language was specifically designed for data analysis. This means that the process of loading in a dataset, visualizing the data, and performing statistical tests is straightforward and easy to interpret. In fact, many of the statistical tests in Python have been directly ported from R due to how well they were implemented. In addition to the native statistical functions, there are many other useful data transformation and modelling libraries, such as the tidyverse package, that simplify the process of ETL and visualizations.


## Challenge Background
From the upper management team, Jeremy received two datasets:

The results of an mpg testing dataset of 50 potential prototype MechaCars. The MechaCar prototypes were produced using multiple design specifications to identify ideal vehicle performance. Multiple metrics such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance were collected for each vehicle.
MechaCar suspension coil test results from multiple production lots. In this dataset, the weight capacity of multiple suspension coils were tested to determine if the manufacturing process is consistent across lots.
By combining his understanding of R and statistics with the manufacturing datasets provided by the upper management, Jeremy should have all the materials he needs to generate a robust technical report. Technical reports such as the one Jeremy will design are common in product development and are used to justify design choices using quantitative and qualitative reasoning.

## Challenge Objectives
The goals of this challenge are for you to complete the following:

Design and interpret a multiple linear regression analysis to identify variables of interest.
Calculate summary statistics for quantitative variables.
Perform a t-test in R and provide interpretation of results.
Design your own statistical study to compare vehicle performance of two vehicles.
## Challenge Instructions
### MPG Regression
Create a new RScript in your R source pane and save it to your active directory. Name this new RScript file MechaCarChallenge.RScript. (Hint: Create a new RScript by going to the File menu. Select “New File” followed by “RScript.” Or you can click the icon in the top-left corner of the RStudio window. Note that the icon looks like a white square with a plus sign in the top left corner.)
Download the MechaCar mpg datasetPreview the document and place it in your active directory for your R session.
Using multiple linear regression, design a linear model that predicts the mpg of MechaCar prototypes using a number of variables within the MechaCar mpg dataset. Create a separate text file called MechaCarWriteUp.txt. In the text file, provide a small writeup of your interpretation of the multiple linear regression results. Be sure to include the following details:
Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
by using the calculated p-value and r-squared value, we have determined that there is a significant relationship between mpg and vehicle_length, as well as, mpg and ground_clearance. 

![1](https://github.com/hbostanchi/R_Analysis/blob/master/Challenge/png/Rplot01.png)
![2](https://github.com/hbostanchi/R_Analysis/blob/master/Challenge/png/Rplot02.png)

so Vehicle.weight,Spoiler.Angle and AWD coeficents has no significant linear relationship, the dependent value is determined by random chance and error.  I decided to remove non significant coeficent and run a regression with this two variables:
lm(formula = mpg ~ vehicle.length + ground.clearance, data = MechaCar_mpg) 

![3](https://github.com/hbostanchi/R_Analysis/blob/master/Challenge/png/3.png)

Is the slope of the linear model considered to be zero? Why or why not?
Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
Suspension Coil Summary
Download the suspension coil testPreview the document result dataset and place it in your active directory for your R session.
In the same MechaCarChallenge.RScript file, create a summary statistics table for the 
### suspension coil’s pounds-per-inch continuous variable.
Be sure to include the following metrics:
Mean
Median
Variance
Standard deviation

![4](https://github.com/hbostanchi/R_Analysis/blob/master/Challenge/png/4.png)

Using the same MechaCarWriteUp.txt text file, provide a short write-up of your interpretation and findings for the suspension coil summary statistics. Be sure to include the following details:
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per inch. Does the current manufacturing data meet this design specification? Why or why not?
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per inch. Our coil_summary_table shows that the current manufacturing data meets this design specification with a variance of 62.29356.

### Suspension Coil T-Test
Using the same suspension coil data and the MechaCarChallenge.RScript file, determine if the suspension coil’s pound-per-inch results are statistically different from the mean population results of 1,500 pounds per inch. (Hint: Refer to the t-test section of this module to determine which statistical test to use.)
In the MechaCarWriteUp.txt text file, provide a small writeup of your interpretation and findings for the t-test results.
Using the same suspension coil data and the MechaCarChallenge.RScript file, We determined that the suspension 
Based on a one sample t-test comparing the sample means of the PSI ,the p value is not statistically significant.
We can say that two means are statistically similar.


![5](https://github.com/hbostanchi/R_Analysis/blob/master/Challenge/png/5.png)
![6](https://github.com/hbostanchi/R_Analysis/blob/master/Challenge/png/6.png)


### Design Your Own Study
Upper management is looking for your expertise and wants you to design a study that compares the performance of the MechaCar prototype vehicle to other comparable vehicles on the market. In the MechaCarWriteUp.txt text file, write a short description of a statistical study that can quantify how the MechaCar outperforms the competition. In your study design, be sure to write about the following considerations:

.Horsepower is a unit of power used to measure the forcefulness of a vehicle's engine. The total number of miles your vehicle can go during its lifespan is also determined using horsepower. Essentially, the horsepower tells the total running capacity of a vehicle. A single unit of horsepower is equivalent to 33,000 lb.
Horsepower is a unit that is unicversal to the engine of the cars even if they are hybrid or electrics.

.Determine what question we would ask, what the null and alternative hypothesis would be to answer that question, and what statistical test could be used to test this hypothesis.

H0:MechaCar has same or less Horsepower than other
Ha; MechaCar has more Horsepower 

Knowing what test should be used, what data should be collected? Hint: Look at the cheat sheetPreview the document for required variables.
The data is the Horsepower for all the cars but Mechacar, that data is continoues as the horsepower is continues and availble to public.



