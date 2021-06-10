getwd()

#deining my work directory
wd="/Users/ASUS/Documents"

setwd(wd)

Butler=read.csv("ButlerWithDeliveries.csv")

head(Butler)
dim(Butler)

cor(Butler)
pairs(Butler)

summary(Butler)

#Running the actual regression model
lmout=lm(Time~Miles,data=Butler)

summary(lmout)

plot(Time~Miles,data=Butler,main="Time Vs. Miles")
abline(lmout,col="red")

par(mfrow=c(2,2))
plot(lmout)