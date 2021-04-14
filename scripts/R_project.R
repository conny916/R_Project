## LOAD PACKAGES ####
library(dplyr)
library(ggplot2)

## READ IN DATA AND ORGANIZE ####
#Read in data
read.csv(file = 'data/0001_day_1_cond_1234_test.csv')
#Look at data
dim(data)
head(data)
tail(data)
xtabs(~category, data)
