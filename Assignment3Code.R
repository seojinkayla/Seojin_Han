att<-attitude
att

ye.model<-lm(att$rating~complaints, data=att)
att$pred<-predict(ye.model,att)
plot(att$complaints,att$pred,col="blue",pch=16)
lines(att$complaints, fitted(ye.model), col="black")

newatt<-data.frame(complaints=seq(1,25,0.5))
newatt$pred<-predict(ye.model,newatt)
plot(newatt$complaints,newatt$pred, col="green")
