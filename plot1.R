#importing data
source('Class_Project2.R')

#data manipulation
totalE <- aggregate(Emissions ~ year, NEI, sum)

#printing of plot 
png(file="plot1.png", bg="transparent")
barplot(height=totalE$Emissions, names.arg=totalE$year, ylab="Total PM2 Emissions", xlab="Years")
dev.off()