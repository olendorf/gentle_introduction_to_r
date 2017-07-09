data()  # Print out a list of data sets

help("iris")  # Learn about the data sets 

head(iris)  # Peak at it

view(iris)  # Look at the full data

## Might be nice to see how the variables are related

cor(iris[c(1:4)])  # just use the numeric columns

## Try exploring by looking at various charts

hist(Sepal.Length)
hist(Sepal.Width)
plot(Sepal.Length, Sepal.Width)


## Still kinda hard to visualize we can make a matrix of charts. Thre are a lot of 
## Packages to do this.

## Basic 

pairs(~Sepal.Length+Sepal.Width+Petal.Length+Petal.Width, data=iris)

## using the car package

install.packages("car")
library(car)

scatterplotMatrix(~Sepal.Length+Sepal.Width+Petal.Length+Petal.Width|Species, data=iris)
help("scatterplotMatrix")  # Look at the options

# you can get a list of R colors at http://www.stat.columbia.edu/~tzheng/files/Rcolor.pdf
colors <- c("darkolivegreen4", "darkorange3", "firebrick4", "goldenrod3")

scatterplotMatrix(
  ~Sepal.Length+Sepal.Width+Petal.Length+Petal.Width|Species, 
  data=iris, 
  diagonal="boxplot", 
  reg.line=FALSE,
  col=colors)

## One more

install.packages("gclus")
library(gclus)

help(cpairs)

petal_data <- iris[c(1:4)]
petal_correlations <- abs(cor(petal_data))
petal_colors <- dmat.color(petal_correlations)
ordered_correlations <- order.single(petal_correlations)
cpairs(petal_data, ordered_correlations, panel.colors = petal_colors, gap=0.5, main="Variables Orderd and Colored by Correlation")


