#importing data
source('Class_Project2.R')

#data manipulation
#filtering Baltamore city (fips 24510) by On Road Emissions
bEmissions <- NEI[(NEI$fips=="24510") & (NEI$type=="ON-ROAD"),]
bEmissionsByYearType <- aggregate(Emissions ~ year, bEmissions, sum)

#Printing of plot 
png(file="plot5.png", bg="transparent")
ggplot(bEmissionsByYearType,aes(x=factor(year),y=Emissions))+
    geom_bar(stat="identity")+
    xlab("Year")+
    ylab("PM2.5 Emission")+
    ggtitle("Emissions in Baltamore City from motor vehicles")
dev.off()
