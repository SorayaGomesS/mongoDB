# Listar todos os bancos de dados
show dbs

# Criar e/ou acessar o banco de dados "ifsp"
use ifsp

# Verificar o banco de dados atual
db

# Criar um objeto 
var contato = {
  "nome": "Fabio Teixeira",
  "email": "fabio.teixeira@ifsp.edu.br"
}

# Inserir o objeto na collection "contatos"
db.contatos.insertOne(contato)

# Listar collections do banco atual
show collections

# Buscar todos os documentos da collection "contatos"
db.contatos.find()

# Buscar o primeiro documento da collection
db.contatos.findOne()

# Buscar documentos com critério
var criterio = { "email": "fabio.teixeira@ifsp.edu.br" }
var contato = db.contatos.find(criterio)
contato

# Contar todos os documentos
db.contatos.countDocuments()

# Contar documentos 
db.contatos.countDocuments()



# Atualizar ou inserir documento (upsert)
var contato = {
  "nome": "Angela Teixeira",
  "email": "angela.teixeira@ifsp.edu.br"
}
db.contatos.update({ "nome": "Angela Teixeira" }, contato, true)

# Atualizar apenas um campo específico com $set
db.contatos.update(
  { "nome": "Angela Teixeira" },
  { $set: { "nome": "Angela Cristina" } }
)
