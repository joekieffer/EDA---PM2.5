#importing data
source('Class_Project2.R')

#data manipulation
#filtering Baltamore city (fips 24510) by On Road Emissions
bEmissions <- NEI[(NEI$fips=="24510") & (NEI$type=="ON-ROAD"),]
bEmissionsByYearType <- aggregate(Emissions ~ year, bEmissions, sum)

#filtering LA city (fips 06037) by On Road Emissions
laEmissions <- NEI[(NEI$fips=="06037") & (NEI$type=="ON-ROAD"),]
laEmissionsByYearType <- aggregate(Emissions ~ year, bEmissions, sum)

#making one data frame
bEmissionsByYearType$City <- "Baltimore City, MD"
laEmissionsByYearType$City <- "Los Angeles County, CA"
blaEmissions <- rbind(bEmissionsByYearType, laEmissionsByYearType)

#Printing of plot 
png(file="plot6.png", bg="transparent")
ggplot(blaEmissions, aes(x=factor(year), y=Emissions, fill=City))+
    geom_bar(stat="identity") +
    facet_grid(City ~ ., scales="free") +
    ylab("Total emissions in tons") +
    xlab("Year") +
    ggtitle("Motor Vehicle emission differences \n Baltimore vs. Los Angelas")
dev.off()