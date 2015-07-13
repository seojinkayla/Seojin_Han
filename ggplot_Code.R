library(ggplot2)

PlantGrowth

ggplot(data,aes(x=finedust, y=sub_users, group=finedust, colour=finedust))+geom_point(size=2, shape=15)

   
data <- read.csv(file.choose(),header=T)
data