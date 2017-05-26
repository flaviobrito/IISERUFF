library(RMongo)
mongo < - mongoDbConnect("SER", "localhost", 27017)
output < -
    dbInsertDocument(
        mongo,
        "evento2",
        '{nome:"Flavio", sobrenome:"Brito", email:"teste_teste@live.com"}'
