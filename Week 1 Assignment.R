#R Bridge - Week 1 Assignment 
#1. Write a loop that calculates 12-factorial.
# We can write a function to calculate factorial of any number.
factorial.of.number <- function(x) 
{
  n <- x
  y <-1
  for (i in 1:n)
  {
    y <- y * i
  }
  return(y)
}
a <- factorial.of.number(12)

#2.  Show how to create a numeric vector that contains the sequence from 20 to 50 by 5. 
y <- 20 + 5*c(0:6)
y

#3.  Show how to take a trio of input numbers a, b, and c and implement the quadratic equation.
QuadraticFunction <- function(a,b,c) 
{
  D <- b^2 - 4*a*c
  x1 = (-b + sqrt(D))/2*a
  x2 = (-b - sqrt(D))/2*a
  return(c(x1,x2))
}
QuadraticFunction(1,-5,6)

