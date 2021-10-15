cars <- mtcars

summary(with(cars,lm(mpg ~ cyl + hp)))

paste('hello world!')