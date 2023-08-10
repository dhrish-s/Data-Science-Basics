
# Creates a vector x1 with values from 0 to 10
x1 <- 0:10
x1

# Creates a vector x2 with values from 10 to 0
x2 <- 10:0
x2

# Creates a vector x3 with values from 1 to 10 using sequence

x3 <- seq(10)
x3

#Creates a vector x4 with values from 30 to 0 with step size of -3

(x4 <- seq(30, 0, by = -3))


# Creates a vector x5 with the given  values

x5 <- c(5, 4, 1, 6, 7, 2, 2, 3, 2, 8)
x5

# Creates a vector x6 with value True repeated 5 times
x6<- rep(TRUE, 5)
x6

# Creates a vector x7  with value  True and False each repeated 5 times
x7<- rep(c(TRUE, FALSE), each = 5)
x7

x8<- rep(c(TRUE, FALSE), times = 5)
x8

# To  find the datatype of a variable
typeof(x7)

#sorting

sort(x5)
order(x5)
rank(x5)