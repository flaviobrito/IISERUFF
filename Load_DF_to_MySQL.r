library(RMySQL)
con < -  dbConnect(RMySQL::MySQL(),
    username = “usuario",
    password = “senha",
    host = "192.168.100.143",
    port = 3306,
    dbname = "mysql")
data("mtcars")
df < - mtcars
dbWriteTable(con,
    "mtcars",
    value = df,
    append = TRUE,
    row.names = FALSE)
dbListTables(con)
df_bd < - dbGetQuery(con, "SELECT * FROM mtcars")
head(df_bd, 4)
