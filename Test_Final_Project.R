install.packages("hflights")
library(hflights)

data("hflights")

head(hflights)

a1 <- hflights[,c(1:6,10:13)]
head(a1)

a2 <- hflights[,c(1:6)]
head(a2)
a2$Date <- NA
a2$Date <- as.Date(paste(a2$Month,a2$Year,a2$DayofMonth,sep = "."), format = "%m.%Y.%d")
head(a2)
x <- paste(a2$Month,a2$Year,a2$DayofMonth,a2$DepTime, sep = ".")
head(x)
a2$DepDateTime <- strptime(paste(a2$Month,a2$Year,a2$DayofMonth,a2$DepTime, sep = "."), format = "%m.%Y.%d.%k")
head(a2)

a2$ArrDayofMonth <- ifelse(a2$DepTime > a2$ArrTime & a2$DepTime !=NA,a2$DayofMonth+1,a2$DayofMonth)
head(a2)

a2$ArrDateTime <- strptime(paste(a2$Month,a2$Year,a2$ArrDayofMonth,a2$ArrTime, sep = "."), format = "%m.%Y.%d.%k")
head(a2)

a3 <- unique(hflights[,c(14)])
a3

a4 <- unique(hflights[,c(14:15)])
a4
str(a4)
dim(a4)
nrow(a4)

a5 <- as.data.frame(unique(hflights[,c(15)]))
a5
str(a5)
dim(a5)
nrow(a5)

library(plyr)

a6 <- ddply(a4.variables = "Origin",.fun = "count" )
a6

a6 <- count(a4,"Origin")
a6

library(ggplot2)

g1 <- ggplot(a4,aes(Origin))

g1 + geom_bar(aes(fill = Origin)) + xlab('Origin Airport') + ylab('Number of Destination') 

head(hflights)

a7 <- hflights[,c(1,5,6,7,10:15)]
a7$OnTimeArr <- ifelse(a7$ArrDelay <=15, 'On Time', 'Late' )
a7$OnTimeDept <- ifelse(a7$DepTime <=15, 'on Time', 'Late')
head(a7)

a8 <- a7[a7$ArrTime = NA, ]
head(a8)
