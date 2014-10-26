#importing data
source('Class_Project2.R')

#data manipulation
#finding coal data aources
coalFuel <- grepl("Fuel Comb.*Coal", SCC$EI.Sector)
coalFuelSource <- SCC[coalFuel,]

#finding emissions that are coal related
coalEmissions <- NEI[(NEI$SCC %in% coalFuelSource$SCC),]

coalEmissionsByYear <- aggregate(Emissions ~ year, coalEmissions, sum)
#Printing of plot 
png(file="plot4.png", bg="white")
ggplot(coalEmissionsByYear, aes(x=factor(year), y=Emissions))+
    geom_bar(stat="identity") +
    xlab("year")+
    ylab("PM2.5 emissions")+
    ggtitle("Emissions from coal")
dev.off()