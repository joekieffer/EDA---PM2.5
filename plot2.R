#importing data
source('Class_Project2.R')

#data manipulation
#filtering by fips - 24510
bEmissions <- NEI[NEI$fips=="24510",]

#grouping Baltamor city emissions by year
bEmissionsByYear <- aggregate(Emissions ~ year, bEmissions, sum)

#Printing of plot 
png(file="plot2.png", bg="white")
barplot(height=bEmissionsByYear$Emissions, names.arg=bEmissionsByYear$year, 
        ylab="Baltamore city emissions",xlab="Years",
        main="Baltamore city fine particulate emissions by years")
dev.off()