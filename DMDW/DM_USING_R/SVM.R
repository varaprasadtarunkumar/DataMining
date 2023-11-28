data("iris")
set.seed(123)
splitIndex <- createDataPartition(iris$Species,p=0.7,list=FALSE)
train_data <- iris[splitIndex,]
test_data <- iris[-splitIndex,]
library(caret)
library(e1071)
model <- svm(Species ~.,data = train_data,kernel = "linear",cost = 1)
predictions <- predict(model,test_data)
