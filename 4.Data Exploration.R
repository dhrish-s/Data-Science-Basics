#import a csv file from a given path
df = read.csv("salary1.csv",header=TRUE)
df

#print the working directory
getwd()

#import the file from the working directory
df1 = read.csv("salary1.csv",header=TRUE)
df1

#print a column by name
df$Basic

#add a new column
df$cps = ((df$Basic) * 10)/100
df

#print the element at position  1 of column Basic
df$Basic[1]

#print all the elements other than 1
df$Basic[-1]

#print the elements from 2 to 4
df$Basic[2:4]

#print the elements  at position  1 and 2
df$Basic[c(1,2)]

#print the name when the condition is satisfied
df$Name[df$Basic == 75000]

#print the first row
df[1,]

#print the second column
df[,2]

#print the first three rows of columns 2 to 4
df[1:3,2:4]

#print the columns by name
df[,c("ID","Name","Dept")] 

#print the rows satisfying the  condition
df[df$Dept=="ECE",]

#Assign the result to another variable
ECE <- df[df$Dept=="ECE",]
ECE

#find  the statistical information of a column
mean(df$Basic)
median(df$Basic)
var(df$Basic)
sd(df$Basic)
mean(ECE$Basic)
mean(df$Basic[df$Dept=="ECE"])
quantile(df$Basic)

