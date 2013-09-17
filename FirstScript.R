#This is my first try to use git within Rstudio...
# library(ggplot2) 
## Lets simulate some psuedo data
n<-30
Gender<-sample(x=c(0,1),size=n,replace=T,prob=c(0.5,0.5))
x<-vector(length=n)
x[Gender==0]<-rnorm(sum(Gender==0),0,1)
x[Gender==1]<-rnorm(sum(Gender==1),0,2)
y<-0.4*x+0.1*Gender+rnorm(n)
model<-lm(y~x)
summary(model)