# README

# Goal
In this proof of concept, I run a trained model in R with new incoming data from web app in Rails.

# Prerequisites

## Rails
1. Rails 5

## R packages

1. [C50 package](https://cran.r-project.org/web/packages/C50/index.html)

Install:
```
install.packages("C50")
```

## Data example
1. [Iris Dataset](https://archive.ics.uci.edu/ml/datasets/Iris). [Csv Version](https://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data)

## Trained model
I use the model trained by [Jalayer Academy](https://youtu.be/5NquIfQxpxk) I follow the instructions in the tutorial and later I serialized the model in a RSD file.

## Improvements
1. Use a SQL/NoSql database.
2. Use some JsLibrary to create a interactive dashboard.
3. Add test.
4. Depend of what is the need, maybe sidekick for background jobs could be a good idea.
5. Better process to accept new incoming data. For example: detect errors or anomalies.
6. How to communicate data between R and Rails.

# References

1. https://quickleft.com/blog/running-r-script-ruby-rails-app/
2. https://www.r-bloggers.com/a-better-way-of-saving-and-loading-objects-in-r/
3. http://stackoverflow.com/questions/3675157/how-do-i-run-rake-tasks-within-my-rails-application
4. https://www.r-bloggers.com/using-sqlite-in-r/
