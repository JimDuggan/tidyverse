# mtcars is also a list
# use map to process mtcars and return the mean of each column
# write your own anonymous function (using tilde notation)

test <- as.list(mtcars)
str(test)
test[[1]]
test$mpg

a1 <- map(mtcars,~{
  cat("processing element\n")
  browser()
  mean(.x)
})

a1 <- map(mtcars,~{
  cat("processing element\n")
  list(Mean=mean(.x),Min=min(.x),Max=max(.x))
})

a2 <- map_df(mtcars,~{
  cat("processing element\n")
  tibble(Mean=mean(.x),Min=min(.x),Max=max(.x))
})

