require("RPostgreSQL")
require("C50")
path<-file.path(getwd(),"Documents/Projects/using_R/lib/r_scripts/models", "flower_decision_tree.rds")
iris_clasifier <- readRDS(path)
drv <- dbDriver("PostgreSQL")
con <- dbConnect(drv, dbname = Sys.getenv("POSTGRES_DB"),
                 host = "localhost", port = 5432,
                 user = Sys.getenv("POSTGRES_USERNAME"), password = Sys.getenv("POSTGRES_PASSWORD"))
new_data <- dbGetQuery(con, "select sepal_length,sepal_width,petal_length,petal_width from flowers")
colnames(new_data) <- c("Sepal.Length", "Sepal.Width","Petal.Length","Petal.Width")
new_data
result <- predict(iris_clasifier,new_data)
result