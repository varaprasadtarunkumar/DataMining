install.packages("fpc")
data(iris)
X <- iris[, 1:4]

num_clusters <- 3

library(fpc)
kmedoids_model <- pamk(X, krange = 1:num_clusters)

cluster_assignments <- kmedoids_model$clustering
medoids <- kmedoids_model$medoids
dev.new()
plot(X[, 1], X[, 2], col = cluster_assignments, pch = 19, main = "KMedoids Clustering")
points(medoids, col = 1:num_clusters, pch = 8, cex = 2)
