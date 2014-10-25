#importing data
source('Class_Project2.R')

#data manipulation
#filtering by fips - 24510
bEmissions <- NEI[NEI$fips=="24510",]

#grouping Baltamor city emissions by year
bEmissionsByYearType <- aggregate(Emissions ~ year + type, bEmissions, sum)

#Printing of plot 
png(file="plot3.png", bg="transparent")
ggplot(bEmissionsByYearType,aes(x=factor(year),y=Emissions,fill=type))+
    geom_bar(stat="identity")+
    facet_grid(. ~ type) +
    xlab("Year")+
    ylab("PM2.5 Emission")+
    ggtitle("Emissions in Baltamore City by source type")
dev.off()