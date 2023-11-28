data("iris")
set.seed(123)
X <- iris[,1:4] # selecting only numeric columns
library(cluster)
num_clusters <- 3
model <- kmeans(X,centers=num_clusters,nstart = 20)
clusters = model$cluster
centers = model$centers
# Scatterplot of data points with cluster assignments
plot(X[, 1], X[, 2],col = clusters, pch = 15, main = "KMeans Clustering", xlab = "Feature 1", ylab = "Feature 2")
# Mark cluster centers on the plot
points(centers, col = 1:num_clusters, pch = 17, cex = 2)
# Add legend to the plot

