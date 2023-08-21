# Let's test whether the Central Limit Theorem (CLT) holds for the gamma distribution. 
# 
# The gamma distribution is defined only over positive numbers. It's often used, e.g., 
library(tidyverse)
theme_set(theme_bw())

# to describe variances (which can only be positive). To get an idea of this distribution,
# let's plot the gamma distributions with shape/location = 2 and various scales. 
tibble(x = seq(0, 20, .05)) %>%
  ggplot(aes(x = x)) +
  stat_function(geom = "line", fun = ~ dgamma(.x, scale = 1, shape = 2), linetype = 1) +
  stat_function(geom = "line", fun = ~ dgamma(.x, scale = 2, shape = 2), linetype = 2) +
  stat_function(geom = "line", fun = ~ dgamma(.x, scale = 4, shape = 2), linetype = 3) +
  stat_function(geom = "line", fun = ~ dgamma(.x, scale = 8, shape = 2), linetype = 4)

# Does the sampling distribution (expected distribution) of the sample mean really follow a 
# normal distribution even when the original distribution (here the gamma) is so highly non-
# normal? To test this, let's take some samples from the gamma distribution and take the 
# mean of those samples.
mean(rgamma(n = 100, shape = 2, scale = 1))

# Now let's do the same thing repeatedly (10,000 times), and plot the distribution of those means,
# and let's compare it against a normal distribution with a mean and SD equal to those of the 100,000
# samples. 
x <- replicate(n = 10000, mean(rgamma(n = 100, shape = 2, scale = 1)))
tibble(x = x) %>%
  ggplot(aes(x = x)) +
  geom_density() +
  stat_function(geom = "line", fun = ~ dnorm(.x, mean = mean(x), sd = sd(x)), color = "blue") 

# try the same with another distribution
# Base R provides random number generation rfoo() where foo indicates the type of distribution: 
# beta (foo = beta), binomial binom, Cauchy cauchy, chi-squared chisq, exponential exp, Fisher F f, 
# gamma gamma, geometric geom, hypergeometric hyper, logistic logis, lognormal lnorm, negative binomial nbinom, 
# normal norm, Poisson pois, Student t t, uniform unif, Weibull weibull. 
# (other packages provide many more distributions but this should suffice =)
