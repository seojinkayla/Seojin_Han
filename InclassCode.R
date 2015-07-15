mtcars
kmeans(mtcars,centers=2)
plot(mtcars$mpg,mtcars$hp)

cars_norm <-scale(mtcars)
d<- dist(cars_norm,method="euclidean")
hc<-hclust(d,method="complete")
plot(hc)

iris

x<-iris[,5]
y<-iris$species
x
y

install.packages("klaR")
install.packages("caret")
install.packages("class")
install.packages("e1071")
install.packages("ElemStatLearn")

library(klaR)
library(caret)
library(class)
library(e1071)
library(ElemStatLearn)

sub=sample(nrow(spam),floor(nrow(spam)*0.9))
train=spam[sub,]
test=spam[-sub,]

xtrain=train[,-58]
ytrain=train$spam

xtest=test[,-58]
ytest=test$spam

model=train(xtrain,ytrain,'nb',trControl=trainControl(method='cv',number=10))

prop.table(table(predict(model$finalModel,xtest)$class,ytest))