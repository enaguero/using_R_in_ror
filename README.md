# README

# Goal
In this proof of concept, I run a trained model in R with new incoming data from web app in Rails.

# Prerequisites
1. Rails 5
2. R packages.
a) [C50 package](https://cran.r-project.org/web/packages/C50/index.html)
b) RPostgreSQL.

Install:
```
install.packages("C50")
install.packages("RPostgreSQL")
```
3. Postgres.

## Data example
1. [Iris Dataset](https://archive.ics.uci.edu/ml/datasets/Iris). [Csv Version](https://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data)

## Trained model
I use the model trained by [Jalayer Academy](https://youtu.be/5NquIfQxpxk) I follow the instructions in the tutorial and later I serialized the model in a RSD file.

## Communications between R and Rails
Using a rake task.

## Improvements
1. Use some JsLibrary to create a interactive dashboard.
2. Add test.
3. Depend of what is the need, maybe sidekick for background jobs could be a good idea.
4. Better process to accept new incoming data. For example: detect errors or anomalies.

# References

1. https://quickleft.com/blog/running-r-script-ruby-rails-app/
2. https://www.r-bloggers.com/a-better-way-of-saving-and-loading-objects-in-r/
3. http://stackoverflow.com/questions/3675157/how-do-i-run-rake-tasks-within-my-rails-application
4. https://www.r-bloggers.com/using-sqlite-in-r/
5. https://www.r-bloggers.com/getting-started-with-postgresql-in-r/
