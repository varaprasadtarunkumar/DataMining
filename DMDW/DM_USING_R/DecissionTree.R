install.packages("rpart")
data("iris")
set.seed(123)
library(caret)
library(rpart)
splitIndex <- createDataPartition(iris$Species,p=0.7,list = FALSE)
test_data <- iris[splitIndex,]
train_data <- iris[-splitIndex,]
model <- rpart(Species ~ ., data = train_data)
predictions <- predict(model,test_data,type = "class")
cm <- confusionMatrix(test_data$Species,predictions)
