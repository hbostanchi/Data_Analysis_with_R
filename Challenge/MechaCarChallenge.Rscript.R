MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=T,stringsAsFactors = F)
View(MechaCar_mpg)
# Use tidyverse's dplyr library to transforms R data.
library(tidyverse)


# MPG Regression
# Using multiple linear regression, we designed a linear model that predicts the mpg of MechaCar prototypes using a number of variables within the MechaCar mpg dataset.
# In R, our multiple linear regression statement is as follows:
lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance + AWD,data=MechaCar_mpg) #generate multiple linear regression model
# Now that we have our multiple linear regression model, we need to obtain our statistical metrics using the summary() function.
summary(lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance + AWD,data=MechaCar_mpg)) #generate summary statistics


# Calculate the data points to use for our line plot using our lm(mpg ~ vehicle_length,MechaCar_MPG_Table)coefficients as follows:
mpg_m1 -> lm(mpg ~ vehicle.length,MechaCar_mpg) #create linear model
mpg_yvals1 <- mpg_m1$coefficients['vehicle.length']*MechaCar_mpg$vehicle.length + mpg_m1$coefficients['(Intercept)'] #determine y-axis values from linear model
# Once we have calculated our line plot data points, we can plot the linear model over our scatter plot:
plt1 <- ggplot(MechaCar_mpg,aes(x=vehicle.length,y=mpg)) #import dataset into ggplot2
plt1 + geom_point() + geom_line(aes(y=mpg_yvals1), color = "red") #plot scatter and linear model

mpg_m2 <- lm(mpg ~ ground.clearance,MechaCar_mpg) #create linear model
mpg_yvales2 <- mpg_m2$coefficients['ground.clearance']*MechaCar_mpg$ground.clearance + mpg_m2$coefficients['(Intercept)'] #determine y-axis values from linear model
plt2 <- ggplot(MechaCar_mpg,aes(x=ground.clearance,y=mpg)) #import dataset into ggplot2
plt2 + geom_point() + geom_line(aes(y=mpg_yvales2), color = "red") #plot scatter and linear model

mpg_m3 <- lm(mpg ~ vehicle.length +ground.clearance , data=MechaCar_mpg) #create linear model
summary(lm(mpg ~ vehicle.length +ground.clearance , data=MechaCar_mpg))

# Suspension Coil Summary
# We created a summary statistics table for the suspension coil's pounds-per-inch continuous variable.
Summary_Statistics <- Suspension_Coil %>% group_by(PSI) %>% summarize(Mean= mean(Suspension_Coil$PSI), 
                                                                      Median= median(Suspension_Coil$PSI), 
                                                                      Variance= var(Suspension_Coil$PSI), 
                                                                      Standard_Deviation= sd(Suspension_Coil$PSI))
View(Summary_Statistics)
# Suspension Coil T-Test
# We determined if the suspension coil's pound-per-inch results are statistically different from the mean population results of 1,500 pounds per inch.
# Generating samples using random sampling

population_table <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F) #import dataset
plt <- ggplot(population_table,aes(x=PSI)) #import dataset into ggplot2
plt + geom_density() #visualize distribution using density plot


# Create a sample dataset using dplyr's sample_n() function.
sample_table <- population_table %>% sample_n(50) #randomly sample 50 data points
plt <- ggplot(sample_table,aes(x=log10(PSI))) #import dataset into ggplot2
plt + geom_density() #visualize distribution using density plot


# Welch One Sample t-test
t.test((sample_table$PSI),mu=mean(population_table$PSI)) #compare sample versus population means


# pair t-test Sample t-test
sample_table <- population_table %>% sample_n(50) #generate 50 randomly sampled data points
sample_table2 <- population_table %>% sample_n(50) #generate another 50 randomly sampled data
t.test((sample_table$PSI),(sample_table2$PSI)) #compare means of two samples




