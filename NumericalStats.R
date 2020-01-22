# install.packages("readr")
# install.packags("mosaic")
library(readr)
library(mosaic)
candy <- read_csv("Data/candy.csv")
attach(candy)

# Mean = sum(x's)/n, where n is the sample size
mean(TotalNumCandies)

# Median (middle) and quartiles/percentiles

# Sort the data smallest to greatest
# Median is Q2 (2nd quartile), half the data is below and half above
# Q1 (1st quartile), 25% of the data is below
# Q3 (3rd quartile), 75% of the data is below

# p% * (n+1) --> this gives you the position, not the value
# i.e. median position = 0.5*(n+1)

n <- length(TotalNumCandies) # Sample size
sort.Total <- sort(TotalNumCandies)
sort.Total
0.5 * (n + 1)
sort.Total[13]

median(TotalNumCandies)

0.25 * (n + 1)

(sort.Total[6] + sort.Total[7]) / 2

favstats(TotalNumCandies)  # from the mosaic package

# Qualitative Variables
table(Gender)
table(Size)
favstats(TotalNumCandies ~ Size)
favstats(TotalNumCandies ~ Gender)

# Spread of Data
range(TotalNumCandies)
IQR(TotalNumCandies)

# Variance sum(xi-mean(x))^2/(n-1)
var(TotalNumCandies)
sd(TotalNumCandies)
