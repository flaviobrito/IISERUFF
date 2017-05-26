library(RODBC)
con <-odbcConnect(“DSN1",
    uid = "usuario",
    pwd = "senha",
    rows_at_time = 500)
sqlSave(con, test_table, "TEST_TABLE")
sqlQuery(con, "SELECT COUNT(*) FROM TEST_TABLE")
d < -sqlQuery(con, "SELECT * FROM TEST_TABLE")
close(con)
