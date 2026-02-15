# Question A
# Question A1:
# Null Hypothesis: Average breaking stength(?) of cookies produced will equal 70
# Alternative Hypothesis: Average breaking strength(?) of cookies produced will not equal 70
#Question A2:
mu <- 70
sigma <- 3.5
xbar <- 69.1
n <- 49
z <- (xbar-mu)/(sigma/sqrt(n))
z
# z-score of -1.8
#z-score falls within +- 1.96 so we fail to reject the null hypothesis.
#Question A3:
my_p_value <- 2 * pnorm(z)
my_p_value
# P value is 0.0719 and is greater than the 0.05and z-score falls within +- 1.96 so we fail to reject the null hypothesis.
#Question A4:
mu <- 70
sigma <- 1.75
xbar <- 69.1
z <- (xbar-mu)/(sigma/sqrt(n))
z
#z-score of -3.6 is outside of +- 1.96 so we can reject the null hypothesis.
my_p_value <- 2 * pnorm(z)
my_p_value
#P value is 0.0003 and indicates high correlation so we can reject the null hypothesis.
#Question A5:
sigma <- 3.5
xbar <- 69.1
n <- 49
z <- (xbar-mu)/(sigma/sqrt(n))
z
#z-score of -2 is outside +- 1.96 so we can reject the null hypothesis
my_p_value <- 2 * pnorm(z)
my_p_value
#p-value of 0.046 shows strong correlation so we can reject the null hypothesis.

#Question B:
xbar <- 85
sigma <- 8
n <- 64
z <- qnorm(0.975)
# I think this is right because we are looking for 2.5% on each side.
lower <- (xbar-z)/(sigma/sqrt(n))
upper <- (xbar+z)/(sigma/sqrt(n))
lower #83.04
upper #86.96

#Question C:
girls_grades <- c(89, 90, 91, 95, 98, 99, 96, 99)
girls_time_spend <- c(19, 20, 22, 25, 28, 30, 32, 36)

boys_grades <- c(86, 84, 92, 93, 93, 96, 98, 98)
boys_time_spend <- c(15, 19, 22, 23, 25, 29, 30, 40)
cor.test(girls_grades, girls_time_spend, method = "pearson")
cor.test(boys_grades, boys_time_spend, method = "pearson")
# correlation for girls: 0.907
# correlation for boys: 0.862
girl_cc <- data.frame(girls_grades, girls_time_spend)
boy_cc<- data.frame(boys_grades, boys_time_spend)
install.packages("GGally")
library(ggplot2)
library(GGally)
ggpairs(
  girl_cc,
  upper = list(continuous = wrap("cor", size = 5)),
  lower = list(continuous = "points"),
  diag  = list(continuous = "densityDiag")
)
ggpairs(
  boy_cc,
  upper = list(continuous = wrap("cor", size = 5)),
  lower = list(continuous = "points"),
  diag  = list(continuous = "densityDiag")
)
#I could not get this to compile with the install.packages() line.

