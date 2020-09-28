#Van,Amanda_unit1.r
#Windows operating system

print("Amanda Van")

print("current mood:dumpster fire")

###Packages/library###
library(ggplot2)
install.packages("tidyverse")
install.packages("devtools")
#install.packages()
#library()

###Data Files###
#2019data = read.table('C:/Users/mandy/Desktop/BIOL672_Comp Stat Data Science Method/2019_7A_summary_for_stats.csv', header = TRUE)
#
#

###Task2:RNG###

rng5000<- rnorm(5000)  #generates random number (5000) and setting it
mean(rng5000) #finds mean/average
sd(rng5000) #finds standard deviation 
hist(rng5000) #plots the histogram 
hist(rng5000,breaks=20, col="blue")#histogram breaks and colors

#Density Lines#
d <- density(rng5000)
lines(x = d$x, y = d$y * length(x) * diff(h$breaks)[1], lwd = 2, col="green") #plots density line
#lines(x = d$x, y = cumsum(d$y)/max(cumsum(d$y)) * length(x), lwd = 2)# plots cumulative density

#Normal Curve#
x <- rng5000
h<-hist(x, breaks=20, col="blue", xlab="rng", main="Histogram with Normal Curve")#makes histogram and lables
xfit<-seq(min(x),max(x),length=100)#points of the normal curve
yfit<-dnorm(xfit,mean=mean(x),sd=sd(x))
yfit <- yfit*diff(h$mids[1:2])*length(x)
lines(xfit, yfit, col="red", lwd=2) #line color and density

#Histogram with both normal curve and density line#
#normal curve steps
x <- rng5000 
h<-hist(x, breaks=20, col="blue", xlab="rng", main="Histogram withdensity line and Normal Curve")
xfit<-seq(min(x),max(x),length=100)#points of the normal curve
yfit<-dnorm(xfit,mean=mean(x),sd=sd(x))
yfit <- yfit*diff(h$mids[1:2])*length(x)
lines(xfit, yfit, col="red", lwd=2) #line color and density for normal curve
#density line steps
d <- density(rng5000)
lines(x = d$x, y = d$y * length(x) * diff(h$breaks)[1], lwd = 2, col="green")#plots density line

###Task3:Sink and Unsink###

rng5000<- rnorm(5000)
mean(rng5000) #finds mean/average
meanrng<-mean(rng5000)
sd(rng5000) #finds standard deviation 
sdrng<-sd(rng5000)

sink("C:/Users/mandy/Desktop/BIOL672_Comp Stat Data Science Method/desc.txt") #outputs to desc.txt files (automate printing of stats tests)
print(meanrng)
print(sdrng)
sink() #stops recording output

pdf(file="C:/Users/mandy/Desktop/BIOL672_Comp Stat Data Science Method/RPlots.pdf")

###Task4:ANOVA###
data=read.table('C:/Users/mandy/Desktop/BIOL672_Comp Stat Data Science Method/roadside_with7and9.csv', header = TRUE)
Site = data$Site_Number; # site number
SPT = data$Site_Plus_Treatment; # site and treatment type
SL = data$Sampling_Location; # location sampled within the site
Treatment = data$Treatment; # mowing treatment for the site
Year = data$Year; # Year the transect were taken
DOY = data$DOY; # the day of the year when the sample was taken (out of 365)
Observer = data$Observer;#who took the sample
Start_Time = data$Start_Time; #the time when the sampling started at each site
End_Time = data$End_Time; # the time the sampling ended at each site
End_Time = data$End_Time;
End_Time = data$End_Time;


###Task5:Kruskal Wallace Test###
