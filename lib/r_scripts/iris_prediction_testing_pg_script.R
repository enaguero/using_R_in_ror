require("RPostgreSQL")
require("C50")
#require("caroline")
path<-file.path(getwd(),"lib/r_scripts/models", "flower_decision_tree.rds")
iris_clasifier <- readRDS(path)
drv <- dbDriver("PostgreSQL")
con <- dbConnect(drv, dbname = Sys.getenv("POSTGRES_DB"),
                 host = "localhost", port = 5432,
                 user = Sys.getenv("POSTGRES_USERNAME"), password = Sys.getenv("POSTGRES_PASSWORD"))
new_data <- dbGetQuery(con, "select id,sepal_length,sepal_width,petal_length,petal_width from flowers where state= 'new'")
ids = new_data[1:1]
data_to_predict = new_data[2:5]
colnames(data_to_predict) <- c("Sepal.Length", "Sepal.Width","Petal.Length","Petal.Width")
result_species <- predict(iris_clasifier,data_to_predict)
predicted_values = data.frame(result_species,ids)
colnames(predicted_values) <- c("result_species","flower_id")

for(i in 1:nrow(predicted_values)) {
  flow_prediction <- predicted_values[i,]
  write_sql <- paste("Insert into predictions (result_species,flower_id,created_at, updated_at) values ('",flow_prediction$result_species,"',",flow_prediction$flower_id,",","now()",",","now()",");",sep="")
  dbSendStatement(con,write_sql)
}
