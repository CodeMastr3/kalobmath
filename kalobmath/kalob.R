## A bookstore offers a chemistry textbook for $159 and a book
## supplement for $41. From past experience, they know about 25% of
## chemistry students just buy the textbook while 60% buy both the
## textbook and supplement.  We are interested in the expected
## revenue from this course.

## Create two vectors to represent this random random variable: x,
## which holds all the values the random variable might take on, and
## px the probabilities associated with each value in x.
  x <- c(-(213000-259), 259)
  px <- c(1-.999363, .999363)
## Use R to calculate the expected revenue from the chemistry course.
  revenue <- sum(print(x*px))
  print(revenue)
## Use R to calculate the standard deviation of revenue in dollars.
  variance <- sum(((x-revenue)^2)*px)
  stdDev <- sqrt(variance)
## Now, let's add some data.

## Use R to sample() 1001 observations from the random variable above.
  sample <- sample(x, 1001, replace = TRUE, prob = px)
## Approximate the expected revenue based on your sample.
  drevenue <- mean(sample)
## Approximate the standard deviation based on your sample.
  dvariance <- sum((sample - drevenue)^2/1001)
  dstdDev <- sqrt(dvariance)
## Approximate P(X > 0) based on your sample.
  print(mean(sample == 159) + mean(sample == 200))  
  print(mean(sample > 0))

## Does your approximation to P(X > 0) make sense, given the random
## variable above?
Yes

