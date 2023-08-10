#Creation of a data frame
mydata <- data.frame(person=c("Peter","Lois","Meg","Chris","Stewie"),
                     age=c(42,40,17,14,1),
                     sex=factor(c("M","F","F","M","M")))
#print the  data frame
mydata

#print the value in row 2 in col 2
mydata[2,2]

#print the value in rows 3 to 5 in columns 3
mydata[3:5,3]

#print the col 3 followed by col 1
mydata[,c(3,1)]

#print the column age by name
mydata$age

#print the second element of column age
mydata$age[2]

#print the number of rows
nrow(mydata)

#print the number of columns
ncol(mydata)

#print the number of rows and cols
dim(mydata)

#print the column person by name
mydata$person

#create another row as a data frame
newrecord <- data.frame(person="Brian",age=7,
                        sex=factor("M"))
newrecord

#combine the two data frames
mydata <- rbind(mydata,newrecord)
mydata

#create another column vector
funny <- c("High","High","Low","Med","High","Med")
funny

#add the column to  the data frame
mydata <- cbind(mydata,funny)
mydata

#create a new column as a derived attribute
mydata$age.mon <- mydata$age*12
mydata

#select the rows matching the condition sex==M
mydata[mydata$sex=="M",]

#Combine two conditions by or
mydata[mydata$age>10|mydata$funny=="High",]


#combine  two conditions by and
mydata[mydata$age > 10 & mydata$funny=="High",]



