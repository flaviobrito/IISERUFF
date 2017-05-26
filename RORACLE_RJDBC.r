library(RJDBC)
drv < - JDBC("oracle.jdbc.OracleDriver",
    classPath = "…tklocal/instantclient_11_2/ojdbc5.jar", " ")
con < - dbConnect(drv, " jdbc:oracle:thin:@192.168.1.10:1521:db", "usuario", "senha")
dbWriteTable(con, "TEST_TABLE", test_table)
dbGetQuery(con, “SELECT COUNT(*) FROM TEST_TABLE")
d<- dbReadTable(con, "TEST_TABLE")
dbDisconnect(con)
           

library(ROracle)
drv< - dbDriver("Oracle")
           con< - dbConnect(drv, "usuario", "senha")
           dbWriteTable(con, ”TEST_TABLE”, test_table)
           dbGetQuery(con, “SELECT COUNT(*) FROM TEST_TABLE")
d< - dbReadTable(con, "TEST_TABLE")
dbDisconnect(con)
