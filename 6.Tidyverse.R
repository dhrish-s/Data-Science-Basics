#install package
install.packages("tidyverse")
#attach the package to the script
library(tidyverse)
#Data sets available in tidyverse package
data()

#View the dataset
View(iris)

#return the columns by name
select(iris,"Petal.Length","Petal.Width")

#add new  columns
mutate(iris,LenWid = Petal.Length*Petal.Width)

#filter the specified rows based on condition
filter(iris,Species=="setosa")

#sort  the rows based on column values
arrange(iris, Petal.Length)
arrange(iris, desc(Petal.Length))

#print the specified summary imformation
summarise(iris, mean=mean(Petal.Length), n=n(), min = min(Petal.Length), max=max(Petal.Length))

#piping the output of one function to another
#mutation with pipes
iris %>% mutate(LenWid = Petal.Length*Petal.Width)

#piping group_by and mutation
iris %>%  group_by(Species) %>% mutate(Mean_Petal = mean(Petal.Length)) %>% mutate(Mean_Sepal = mean(Sepal.Length))

#piping group_by and summarise
iris %>% group_by(Species) %>% summarise(mean(Petal.Length),mean(Petal.Width),min(Petal.Length),n())


## Data Visualization

#scatter plot
ggplot(iris, aes(Petal.Length, Petal.Width)) + geom_point()
ggplot(iris) + geom_point(aes(Petal.Length, Petal.Width))
#scatter plot with third dimension
ggplot(iris, aes(Petal.Length, Petal.Width, color = Species)) + geom_point()
#changing the color palette
ggplot(iris, aes(Petal.Length, Petal.Width, color = Species)) + geom_point() +  scale_color_brewer(palette ="Dark2")

#bar chart
ggplot(iris, aes(Species)) + geom_bar(fill="pink") 

#box plot
ggplot(iris, aes(x = Species,y = Sepal.Length))+geom_boxplot(fill = "pink", colour = "#3366FF")

#frequency polycon
ggplot(iris, aes(Sepal.Length)) + geom_freqpoly()

#histogram
ggplot(iris, aes(Sepal.Length)) + geom_histogram() 
ggplot(iris, aes(Sepal.Length)) + geom_histogram(fill = "light blue", colour="blue") + geom_freqpoly()

#drawing a regression line
ggplot(iris,aes(Petal.Length, Petal.Width)) + geom_point(color="red") + geom_smooth(method="lm")

#labs function
ggplot(iris, aes(Sepal.Length)) + geom_histogram() + labs(title="Histogram", x="Sepal Length", y = "Frequency")

#barplot
barplot(iris$Sepal.Length, col=iris$Species, xlab = "Sepal Length", ylab = "Count")

#histogram
hist(iris$Sepal.Length, col="red")
