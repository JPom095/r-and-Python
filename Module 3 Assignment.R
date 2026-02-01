#Mode function setup because I do not remember covering this in class.
#This was shamelessly stolen from geeksforgeeks.org.
get_mode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}



set1 <- c(10,2,3,2,4,2,5)
#First step
mean(set1)
median(set1)
get_mode(set1)
#Second step
range(set1)
IQR(set1)
var(set1)
sd(set1)

set2 <- c(20,12,13,12,14,12,15)
#First step
mean(set2)
median(set2)
get_mode(set2)
#Second step
range(set2)
IQR(set2)
var(set2)
sd(set2)
#These data sets have the same central tendency, spread, variation, and IQR because the values share the same range and are identical IN RELATION TO EACH OTHER.
#While they are not exactly the same values, the distance between each is identical and therefore will return identical variance and standard deviation.
#This example is helpful in understanding spread because we usually use similar or quite different data sets to learn these concepts instead of just putting a 1 in front of them.