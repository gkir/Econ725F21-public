cars <- mtcars

summary(with(cars,lm(mpg ~ cyl + hp)))

paste('Hello Section 3!')