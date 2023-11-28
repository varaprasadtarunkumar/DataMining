data("iris")
set.seed(123)
X <- iris[,1:4]
library(cluster)
library(e1071)
model <- hclust(dist(X),method="average")
plot(model,main="Hierarchial Clustering",cex=0.8)
