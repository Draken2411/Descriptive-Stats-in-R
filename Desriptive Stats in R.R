var1<-c("1")
var2<-c("1","2","a")

airquality <- datasets::airquality

#top 10 rows and last 10 rows
head(airquality,10)
tail(airquality,10)

#columns
airquality[50:60,c(1,2)]

df<-airquality[,-6]

#descriptive statistics
#1

summary(airquality[,c(4,5)])

airquality$Temp
airquality$Wind
airquality$Ozone

summary(airquality$Wind)
summary(airquality$Ozone)

#visualization
#scatter plot

plot(airquality$wind)

plot(airquality$Temp,airquality$Ozone,type='p')

plot(airquality)

#points and lines

plot(airquality$Wind,type = 'l') #p: point , l: line , b: both

plot(airquality$Wind, xlab = 'Ozone Leves in NY city', col = 'red', type= 'l')


#Horizontal Bar Plot

barplot(airquality$Ozone, main = 'Ozone Concentration o=in air', ylab = 'Ozone Levels', col = 'Pink' , horiz = F, axes=T)

#Histogram

hist(airquality$Temp)
hist(airquality$Temp, main = 'Solar Radiation values in air' , xlab = 'solar rad.', col= 'pink')

#single box plot

boxplot(airquality$Wind, main='Boxplot')
boxplot.stats(airquality$Wind)$out

#multiple box plot

boxplot(airquality[,1:4],main='Multiple')

boxplot(airquality$Ozone, main='Boxplot')
boxplot.stats(airquality$Ozone)$out

#margin of the grid (mar)
#no of woes and colums(mfrow)
#whether 
#labels(las: l for horizontal, las:0 for vertical)
#bty - box arounf the plot

par(mfrow = c(3,3) , mar = c(2,5,3,1) , las=0, bty=0)

plot(airquality$Wind)
plot(airquality$wind, airquality$Ozone)
plot(airquality@wind, type = 'l')
plot(airquality@wind, type = 'l')
plot(airquality@wind, type = 'l')
barplot(airquality$Wind, main = 'Wind speed', xlab = 'Wind direction', col = 'Pink' , horiz = F)
hist(airquality$Ozone)
boxplot(airquality$Ozone)
boxplot(airquality[,0:4],main='Multiple Box plots')

