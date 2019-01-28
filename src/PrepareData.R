#! /usr/bin/env Rscript
# prepare_data.R
# Bailey Lei, Simon Chiu, Jan 2019

# This script loads a data file, prepares the data, and outputs
# a cleaned version of the data file. This script takes two arguments -
# a path or filename by which to load the data, and another path or filename
# by which to save the cleaned data.

# Usage: Rscript PrepareData.R ../data/ucr_crime_1975_2015.csv ../data/cleaned_crime.csv

# load libraries
suppressPackageStartupMessages(library(tidyverse))
suppressPackageStartupMessages(library(stringi))

# read in command line arguments
args <- commandArgs(trailingOnly = TRUE)
input <- args[1]
output <- args[2]

# define main function
main <- function() {

  # load data
  suppressMessages(crime_data <- read_csv(input))

  #Keep city names only and filter out all county
  crime_data<-crime_data %>% filter(!str_detect(department_name, "County"))

  #remove all states and keep city name only
  crime_data$department_name <- gsub("\\,.*","",crime_data$department_name)

  #filter relevant columns of interest and reshape to tidy format
  crime_data_reshape <- crime_data %>%
    select(city = department_name,
           'All Crimes' = violent_per_100k,
           Robbery = rob_per_100k,
           Assult = agg_ass_per_100k,
           Rape = rape_per_100k,
           Homicide = homs_per_100k,
           year) %>%
    gather(key = "category", value = "crime_rate", 2:6 )



  # save cleaned data
  crime_data_reshape %>% write_csv(output)
          print("Cleaned data successfully saved.")

}

# call the main function
main()
