install.packages(c("e1071","caret"))
data("iris")
set.seed(123)
library(e1071)
library(caret)
splitIndex <- createDataPartition(iris$Species,p=0.7,list = FALSE)
train_data <- iris[splitIndex,]
test_data <- iris[-splitIndex,]
model <- naiveBayes(Species ~ .,data=train_data)
print(model)
predictions <- predict(model,test_data)
cm <- confusionMatrix(test_data$Species,predictions)
