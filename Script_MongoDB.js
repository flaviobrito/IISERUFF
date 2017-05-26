db.evento.drop()

db.createCollection('evento');

show collections

db.evento.insert({nome:"Flavio", sobrenome:"Brito", email:"flaviobrito@live.com"});

db.evento.find()

db.evento.insert([{nome:"Antonio", sobrenome:"Jose", email:"ajose@gmail.com"},{nome:"Jose", sobrenome:"Manoel", email:"jmanoel@gmail.com"}]);

db.evento.find()

//Atualizando
db.evento.update({nome:"Flavio"},{$set:{palestrante:"Sim"}});

db.evento.find({nome:"Flavio"});

db.evento.find({$or:[{nome:"Manoel"},{palestrante:"Sim"}]});

db.evento.find({$and:[{nome:"Manoel"},{palestrante:"Sim"}]});

//ordenando
db.evento.find().sort({nome:1}); //ascendente
db.evento.find().sort({nome:-1}); //descendente


//Contagem de documentos
db.evento.find().count();
db.evento.find({palestrante:"Sim"}).count();

//Remover documentos
db.evento.remove({sobrenome:"Manoel"});
db.evento.find().sort({nome:1});

//Limitando os registros
db.evento.find().limit(1)