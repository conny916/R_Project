## LOAD PACKAGES ####
library(dplyr)
library(ggplot2)
library(tidyverse)

## READ IN DATA AND ORGANIZE ####
#Read in data
data1 = read.csv(file = 'data/0001_day_1_cond_1234_test.csv')
data2 = read.csv(file = 'data/0001_day_2_cond_1234_test.csv') %>%
  select(response_oldnew, response_outcome, tendencyCorrect_oldnew, imgID)

#Look at data
dim(data)
head(data)
tail(data)
xtabs(~category, data)

## MERGE DATA ####
left_join(data1, data2, by="imgID")

