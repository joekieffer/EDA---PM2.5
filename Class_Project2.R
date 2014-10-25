#adding in the librarys for the plots
library(ggplot2)
library(base)
#migrating to my data folder
setwd("~/git/EDA---PM2.5")
#data import
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

