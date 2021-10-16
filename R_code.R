a<-read.csv("D:/WORK/IBM python csv/COVID19.csv")
a

head(a)
summary(a$Confirmed)
library(ggplot2) 
p1<-ggplot(a, aes(x=Country.Region, y=Deaths,label=Deaths))+ geom_bar(stat='identity',position='dodge',color='black')+ scale_y_sqrt()+coord_flip()+geom_text(hjust=1.1,vjust=0,color="white",fontface="bold",size=4)+theme_bw()+theme(legend.position="none")+ggtitle("Deaths due to COVID19")
p1

ggplot(a, aes(x=Country.Region, y=Confirmed,label=Deaths))+ geom_bar(stat='identity',position='dodge',color='black')+ scale_y_sqrt()+coord_flip()+geom_text(hjust=1.1,vjust=0,color="white",fontface="bold",size=4)+theme_bw()+theme(legend.position="none")+ggtitle("Confirmed cases due to COVID19")


ggplot(a, aes(x=Country.Region, y=Recovered,label=Deaths))+ geom_bar(stat='identity',position='dodge',color='black')+ scale_y_sqrt()+coord_flip()+geom_text(hjust=1.1,vjust=0,color="white",fontface="bold",size=4)+theme_bw()+theme(legend.position="none")+ggtitle("Recovered people from COVID19")
hist(a$Confirmed,breaks=50,col="green")
hist(a$Confirmed,breaks=50,col="green",main="Histogram to show count of confirmed cases",xlab="confirmed cases")

pie(a$Deaths,labels=a$Province.State, main="Pie chart about affected Provinces/States",radius=1, col=rainbow(length(a$Deaths)))

ggplot(a, aes(x=Confirmed,y=Deaths))+ geom_point(size=2)

b= subset(a,select=-c(Province.State,Country.Region,Last.Update))
b<-as.matrix(b)
heatmap(b)

library(ggplot2) 
Province.State<-a$Province.State
Country.Region<-a$Country.Region
r<-a$Last.Update
s<-a$Confirmed
t<-a$Deaths
u<-a$Recovered
v<-a$Latitude
w<-a$Longitude
b <- ggplot(data = a, aes(x = Country.Region, y = Deaths)) + geom_line(size = 0.8)  + geom_point() 
b 

b <- ggplot(data = a, aes(x = Country.Region, y = Confirmed)) + geom_line(size = 0.8)  + geom_point() 
b 

b <- ggplot(data = a, aes(x = Country.Region, y = Recovered)) + geom_line(size = 0.8)  + geom_point() 
b 

b <- ggplot(data = a, aes(x = Confirmed, y = Deaths)) + geom_line(size = 0.8)  + geom_point() 
b 

b <- ggplot(data = a, aes(x = Confirmed, y = Recovered)) + geom_line(size = 0.8)  + geom_point() 
b 

b <- ggplot(data = a, aes(x = Latitude, y = Deaths)) + geom_line(size = 0.8)  + geom_point() 
b

b <- ggplot(data = a, aes(x = Latitude, y = Confirmed)) + geom_line(size = 0.8)  + geom_point() 
b

k<-kmeans(a$Latitude,3)
k$size
k$centers
plot(kmeans[c(a$Latitude,a$Confirmed)], col=k$cluster)
