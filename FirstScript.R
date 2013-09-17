#This is my first try to use git within Rstudio...
library(ggplot2) 
## Lets simulate some psuedo data
n<-50
Gender<-sample(x=c(0,1),size=n,replace=T,prob=c(0.5,0.5))
x<-vector(length=n)
x[Gender==0]<-rnorm(sum(Gender==0),0,1)
x[Gender==1]<-rnorm(sum(Gender==1),0,1.5)
y<-0.4*x+0.3*Gender+rnorm(n)
model1<-lm(y~x)
model2<-lm(y~x,subset=which(Gender==1))
model3<-lm(y~x,subset=which(Gender==0))

df<-data.frame(y,x,factor(Gender))
ggplot(df,aes(y=y,x=x,color=factor(Gender)))+geom_point(size=3)+
  geom_smooth(method=lm,  se=FALSE,size=1.2) 
summary(model)