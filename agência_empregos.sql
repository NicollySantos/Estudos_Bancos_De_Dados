-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Cliente (
genero VARCHAR(45),
rg VARCHAR(45),
dt_Nasc VARCHAR(45),
rua VARCHAR(45),
bairro VARCHAR(45),
numero VARCHAR(45),
cidade VARCHAR(45),
estado VARCHAR(45),
complemento VARCHAR(45),
email VARCHAR(45),
email1 VARCHAR(45),
email2 VARCHAR(45),
email3 VARCHAR(45),
email4 VARCHAR(45),
status VARCHAR(45),
telefone VARCHAR(45),
telefone1 VARCHAR(45),
telefone2 VARCHAR(45),
telefone3 VARCHAR(45),
telefone4 VARCHAR(45),
cpf VARCHAR(45),
id_cliente INTEGER PRIMARY KEY
)

CREATE TABLE Funcionario (
telefone VARCHAR(45),
telefone1 VARCHAR(45),
telefone2 VARCHAR(45),
telefone3 VARCHAR(45),
telefone4 VARCHAR(45),
id_venda VARCHAR(45),
cpf VARCHAR(45),
rg VARCHAR(45),
data_demissao VARCHAR(45),
genero VARCHAR(45),
cod_supervisor VARCHAR(45),
email VARCHAR(45),
email1 VARCHAR(45),
email2 VARCHAR(45),
email3 VARCHAR(45),
email4 VARCHAR(45),
dt_Nasc VARCHAR(45),
nome VARCHAR(45),
cargo VARCHAR(45),
data_emissao VARCHAR(45),
id_pedido VARCHAR(45),
id_func INTEGER PRIMARY KEY,
id_agencia VARCHAR(45),
id_cliente INTEGER,
FOREIGN KEY(id_cliente) REFERENCES Cliente (id_cliente)
)

CREATE TABLE Usuário (
id_usuario INTEGER PRIMARY KEY
)

CREATE TABLE Plataforma (
nome_plat VARCHAR(45),
id_agencia INTEGER PRIMARY KEY,
id_agencia1 VARCHAR(45)
)

CREATE TABLE Cadastro (
telefone VARCHAR(45),
telefone1 VARCHAR(45),
telefone2 VARCHAR(45),
telefone3 VARCHAR(45),
telefone4 VARCHAR(45),
nome VARCHAR(45),
senha VARCHAR(45),
email VARCHAR(45),
cep VARCHAR(45),
complemento VARCHAR(45),
numero VARCHAR(45),
bairro VARCHAR(45),
cidade VARCHAR(45),
estado VARCHAR(45),
cpf VARCHAR(45),
id_cadastro INTEGER PRIMARY KEY
)

CREATE TABLE Login (
senha VARCHAR(45),
email VARCHAR(45),
id_login INTEGER PRIMARY KEY
)

CREATE TABLE Candidatura (
data_hora VARCHAR(45),
id_vaga INTEGER PRIMARY KEY,
id_cliente VARCHAR(45),
id_contratante VARCHAR(45)
)

CREATE TABLE Contratantes (
email VARCHAR(45),
email1 VARCHAR(45),
email2 VARCHAR(45),
email3 VARCHAR(45),
email4 VARCHAR(45),
nome VARCHAR(45),
nome_responsavel VARCHAR(45),
cnpj VARCHAR(45),
telefone VARCHAR(45),
telefone1 VARCHAR(45),
telefone2 VARCHAR(45),
telefone3 VARCHAR(45),
telefone4 VARCHAR(45),
bairro VARCHAR(45),
cidade VARCHAR(45),
estado VARCHAR(45),
rua VARCHAR(45),
numero VARCHAR(45),
complemento VARCHAR(45),
id_contratante INTEGER PRIMARY KEY,
id_agencia VARCHAR(45)
)

CREATE TABLE Vagas (
vaga VARCHAR(45),
id_vaga INTEGER PRIMARY KEY
)

CREATE TABLE Agencia_empregos (
nome VARCHAR(45),
cnpj VARCHAR(45),
bairro VARCHAR(45),
cidade VARCHAR(45),
estado VARCHAR(45),
numero VARCHAR(45),
complemento VARCHAR(45),
telefone VARCHAR(45),
telefone1 VARCHAR(45),
telefone2 VARCHAR(45),
telefone3 VARCHAR(45),
telefone4 VARCHAR(45),
email VARCHAR(45),
email1 VARCHAR(45),
email2 VARCHAR(45),
email3 VARCHAR(45),
email4 VARCHAR(45),
num_func VARCHAR(45),
id_agencia INTEGER PRIMARY KEY
)

CREATE TABLE fazer (
id_cliente INTEGER,
id_vaga INTEGER,
FOREIGN KEY(id_cliente) REFERENCES Cliente (id_cliente),
FOREIGN KEY(id_vaga) REFERENCES Candidatura (id_vaga)
)

CREATE TABLE preencher (
id_agencia INTEGER,
id_cadastro INTEGER,
id_login INTEGER,
PRIMARY KEY(id_agencia,id_cadastro,id_login)
)

CREATE TABLE realizar (
id_login INTEGER,
id_vaga INTEGER,
FOREIGN KEY(id_login) REFERENCES Login (id_login),
FOREIGN KEY(id_vaga) REFERENCES Candidatura (id_vaga)
)

CREATE TABLE ter (
id_agencia INTEGER,
FOREIGN KEY(id_agencia) REFERENCES Plataforma (id_agencia)
)

CREATE TABLE acessar (
id_agencia INTEGER,
id_usuario INTEGER,
FOREIGN KEY(id_agencia) REFERENCES Plataforma (id_agencia),
FOREIGN KEY(id_usuario) REFERENCES Usuário (id_usuario)
)

CREATE TABLE possuir (
id_func INTEGER,
id_agencia INTEGER,
FOREIGN KEY(id_func) REFERENCES Funcionario (id_func),
FOREIGN KEY(id_agencia) REFERENCES Agencia_empregos (id_agencia)
)

CREATE TABLE escolher (
id_vaga INTEGER,
FOREIGN KEY(id_vaga) REFERENCES Candidatura (id_vaga)
)

CREATE TABLE disponibilizar (
id_vaga INTEGER,
id_contratante INTEGER,
FOREIGN KEY(id_vaga) REFERENCES Vagas (id_vaga),
FOREIGN KEY(id_contratante) REFERENCES Contratantes (id_contratante)
)

CREATE TABLE conter (
id_agencia INTEGER,
id_vaga INTEGER,
FOREIGN KEY(id_agencia) REFERENCES Agencia_empregos (id_agencia),
FOREIGN KEY(id_vaga) REFERENCES Vagas (id_vaga)
)

