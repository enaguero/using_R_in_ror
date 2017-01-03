require("C50")
new_data <- data.frame("Sepal.Length" = c(7.7) , "Sepal.Width" = c(3.8), "Petal.Length" = c(6.7), "Petal.Width" = c(2.2))
iris_clasifier <- readRDS("models/flower_decision_tree.rds")
result <- predict(iris_clasifier,new_data)
resultfile
