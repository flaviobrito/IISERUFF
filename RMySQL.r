library(RMySQL)
con < -  dbConnect(RMySQL::MySQL(),
    username = “usuario",
    password = “senha",
    host = "192.168.100.143",
    port = 3306,
    dbname = "mysql")
