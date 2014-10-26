#adding in the librarys for the plots
library(ggplot2)
library(base)
#data download
download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip", "NEI_Data", method="curl")
unzip("NEI_Data")

#data import
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

