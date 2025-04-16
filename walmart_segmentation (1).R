
# Walmart Customer Segmentation using K-Means

# Load required libraries
library(amap)
library(factoextra)
library(cluster)
library(gridExtra)

# Load dataset
data <- read.csv("K_Means_Study.csv")

# Set seed and run initial clustering
set.seed(456)
clusters <- kmeans(data, 4, nstart = 30)
newDataSet <- cbind(data, cluster = clusters$cluster)

# Visualize optimal clusters
k2 <- kmeans(data, 2, nstart = 30)
k3 <- kmeans(data, 3, nstart = 30)
k4 <- kmeans(data, 4, nstart = 30)
k5 <- kmeans(data, 5, nstart = 30)
k6 <- kmeans(data, 6, nstart = 30)

plot1 <- fviz_cluster(k2, geom = "point", data = data) + ggtitle("k = 2")
plot2 <- fviz_cluster(k3, geom = "point", data = data) + ggtitle("k = 3")
plot3 <- fviz_cluster(k4, geom = "point", data = data) + ggtitle("k = 4")
plot4 <- fviz_cluster(k5, geom = "point", data = data) + ggtitle("k = 5")
plot5 <- fviz_cluster(k6, geom = "point", data = data) + ggtitle("k = 6")

grid.arrange(plot1, plot2, plot3, plot4, plot5)

# Evaluate cluster count
fviz_nbclust(data, kmeans, method="wss")
fviz_nbclust(data, kmeans, method="silhouette")

# Gap Statistic method
set.seed(456)
GapStat <- clusGap(data, FUN=kmeans, nstart=30, B=60, K.max=12)
fviz_gap_stat(GapStat)
