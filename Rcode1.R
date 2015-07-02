#dataset: Percent of Adult Current Smokers by Sex and Race/Ethnicity, 1995-2010 
#http://catalog.data.gov/dataset/percent-of-adult-current-smokers-by-sex-and-race-ethnicity-1995-2010-4e337
#Seojin Han

data=read.csv(file.choose(),header=T)
data
par(mfrow=c(1,1))
plot(data)
boxplot(data)