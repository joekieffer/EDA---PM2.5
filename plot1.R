#importing data
source('Class_Project2.R')

#data manipulation
totalE <- aggregate(Emissions ~ year, NEI, sum)

#printing of plot 
png(file="plot1.png", bg="white")
barplot(height=totalE$Emissions, names.arg=totalE$year, ylab="Total emissions", xlab="Years",main="Total fine particulate matter emission")
dev.off()