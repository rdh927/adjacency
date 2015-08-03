# make a plot of frequency vs. adjacency number (k) with surface coverage (theta) 
# as the sliding variable
# Assume 100 ligands

# load the manipulate library
library(manipulate)

# define x axis values
x <- c(0:6)

# redefine margin sizes
par(mar = c(5.1, 5.1, 4.1, 2.1))

# plot using manipulate()
manipulate(
  plot(x,100*dbinom(x, size=6, prob = z), pch = 19, ylim = c(0, 80),
       main = "Frequency of k with Changing PTC Surface Coverage", 
       xlab = "Adjacency Number, k", ylab = "Frequency", cex = 3, 
       cex.main = 2, cex.lab = 2, cex.axis = 2), z = slider(0.05, 0.95))
