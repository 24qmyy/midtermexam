install.packages("pacman")
library(pacman)
p_load(nycflights13, tidyverse)

data(flights)
data(airlines)
data(weather)
data(airports)
head(flights)

head(airlines)
head(weather)
head(flights)
#1
flights%>%
filter(month==1 & day==1)
#2
flights%>%
filter(arr_delay >= 120)
#3
flights%>%
arrange(desc(dep_delay))  

#4
flights%>%
group_by(carrier)%>%summarise(mean_delay=mean(arr_delay,na.rm=TRUE))%>%
  arrange(desc(mean_delay))

#5
flights%>%
  group_by(hour)%>%summarise(mean_delay=mean(arr_delay,na.rm=TRUE))%>%
  arrange(desc(mean_delay))

#6
flights%>%
select(year:day, hour,origin,dest,tailnum,carrier)%>%
head(n=100)

#7

#8
  flights1<-flights%>%filter(carrier=="ALB"|carrier=="BDL"|carrier=="BTV")
flights1%>%
  data(flights1)

group_by(month,carrier)%>%summarise(count=n())
 data(flights1)
#9

#10
hist(weather$temp)



