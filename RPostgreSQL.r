library(RPostgreSQL)
con < -
    dbConnect(
        'PostgreSQL',
        user = 'USUARIO',
        password = ‘SENHA', host = ‘192.168.1.10',
        port = 5432,
        dbname = ‘MEU_BANCO')

data(iris)
dbWriteTable(con, 'iris', iris, row.names = FALSE)
output < - dbGetQuery(con, "SELECT * FROM iris")
summary(output)
