#create two vectors X and Y
X <- c(1.1,2,3.5,3.9,4.2)
Y <- c(2,2.2,-1.3,0,0.2)

#plot the points on the X Y plane
plot(X,Y)

#plot the points as a line
plot(X,Y,type="l")

#plot the values as points and line
plot(X,Y,type="b")

#plot the values with Title, X  axis label, Y axis label
plot(X,Y,type="b",main="My lovely plot",xlab="x axis label",
     ylab="location y")

#plot with color
plot(X,Y,type="b",main="My lovely plot",xlab="X",ylab="Y",col=2)


plot(X,Y,type="b",main="My lovely plot",xlab="X",ylab="Y",col="seagreen2")

#other attributes
plot(X,Y,type="b",main="My lovely plot",xlab="X",ylab="Y",col=4,pch=1,lty=1,cex=4,lwd=3)

