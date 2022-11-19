-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Hospital (
cnpj VARCHAR(45),
email VARCHAR(45),
email1 VARCHAR(45),
email2 VARCHAR(45),
email3 VARCHAR(45),
email4 VARCHAR(45),
nome VARCHAR(45),
telefone VARCHAR(45),
telefone1 VARCHAR(45),
telefone2 VARCHAR(45),
telefone3 VARCHAR(45),
telefone4 VARCHAR(45),
bairro VARCHAR(45),
cidade VARCHAR(45),
estado VARCHAR(45),
complemento VARCHAR(45),
numero VARCHAR(45),
cep VARCHAR(45),
id_hospital INTEGER PRIMARY KEY,
num_func VARCHAR(45),
tipo_pag INTEGER
)

CREATE TABLE Consulta (
motivo VARCHAR(45),
id_paciente VARCHAR(45),
nome_profissional VARCHAR(45),
id_consulta INTEGER PRIMARY KEY
)

CREATE TABLE Consultório (
nome VARCHAR(45),
bairro VARCHAR(45),
cidade VARCHAR(45),
estado VARCHAR(45),
numero VARCHAR(45),
complemento VARCHAR(45),
cep VARCHAR(45),
id_consultorio INTEGER PRIMARY KEY
)

CREATE TABLE Clínica (
nome VARCHAR(45),
complemento VARCHAR(45),
bairro VARCHAR(45),
cidade VARCHAR(45),
estado VARCHAR(45),
numero VARCHAR(45),
cep VARCHAR(45),
id_clinica INTEGER PRIMARY KEY
)

CREATE TABLE Plataforma (
admin VARCHAR(45),
nome_plat VARCHAR(45),
id_hospital INTEGER PRIMARY KEY
)

CREATE TABLE Usuário (
id_usuario INTEGER PRIMARY KEY
)

CREATE TABLE Login (
email VARCHAR(45),
senha VARCHAR(45),
id_login INTEGER PRIMARY KEY
)

CREATE TABLE Cliente (
email VARCHAR(45),
senha VARCHAR(45),
cpf VARCHAR(45),
telefone VARCHAR(45),
telefone1 VARCHAR(45),
telefone2 VARCHAR(45),
telefone3 VARCHAR(45),
telefone4 VARCHAR(45),
nome VARCHAR(45),
cep VARCHAR(45),
bairro VARCHAR(45),
estado VARCHAR(45),
cidade VARCHAR(45),
numero VARCHAR(45),
complemento VARCHAR(45),
id_cliente INTEGER PRIMARY KEY
)

CREATE TABLE Pagamento (
id_func VARCHAR(45),
data_pag VARCHAR(45),
id_paciente VARCHAR(45),
num_documento VARCHAR(45),
tipo_pag INTEGER PRIMARY KEY
)

CREATE TABLE Alocar (
id_consultorio INTEGER,
id_consulta INTEGER,
id_clinica INTEGER,
PRIMARY KEY(id_consultorio,id_consulta,id_clinica)
)

CREATE TABLE Tornar (
id_cliente INTEGER,
id_consulta INTEGER,
FOREIGN KEY(id_cliente) REFERENCES Cliente (id_cliente),
FOREIGN KEY(id_consulta) REFERENCES Consulta (id_consulta)
)

CREATE TABLE Acessar (
id_usuario INTEGER,
id_hospital INTEGER,
FOREIGN KEY(id_usuario) REFERENCES Usuário (id_usuario),
FOREIGN KEY(id_hospital) REFERENCES Plataforma (id_hospital)
)

CREATE TABLE Possuir (
id_consultorio INTEGER,
id_clinica INTEGER,
id_paciente INTEGER,
id_prontuario INTEGER,
PRIMARY KEY(id_consultorio,id_clinica,id_paciente,id_prontuario)
)

CREATE TABLE Deter (
id_hospital INTEGER,
id_consultorio INTEGER,
id_clinica INTEGER,
PRIMARY KEY(id_hospital,id_consultorio,id_clinica)
)

CREATE TABLE Ter (
id_hospital INTEGER,
id_consultorio INTEGER,
id_clinica INTEGER,
PRIMARY KEY(id_hospital,id_consultorio,id_clinica)
)

CREATE TABLE Paciente (
telefone VARCHAR(45),
telefone1 VARCHAR(45),
telefone2 VARCHAR(45),
telefone3 VARCHAR(45),
telefone4 VARCHAR(45),
cpf VARCHAR(45),
genero VARCHAR(45),
email VARCHAR(45),
email1 VARCHAR(45),
email2 VARCHAR(45),
email3 VARCHAR(45),
email4 VARCHAR(45),
dt_Nasc VARCHAR(45),
rg VARCHAR(45),
complemento VARCHAR(45),
cidade VARCHAR(45),
bairro VARCHAR(45),
rua VARCHAR(45),
estado VARCHAR(45),
numero VARCHAR(45),
num_documento VARCHAR(45),
id_paciente INTEGER PRIMARY KEY,
id_consulta INTEGER,
FOREIGN KEY(id_consulta) REFERENCES Consulta (id_consulta)
)

CREATE TABLE Cadastro (
cpf VARCHAR(45),
email VARCHAR(45),
cep VARCHAR(45),
complemento VARCHAR(45),
numero VARCHAR(45),
bairro VARCHAR(45),
cidade VARCHAR(45),
estado VARCHAR(45),
nome VARCHAR(45),
telefone VARCHAR(45),
telefone1 VARCHAR(45),
telefone2 VARCHAR(45),
telefone3 VARCHAR(45),
telefone4 VARCHAR(45),
senha VARCHAR(45),
id_cadastro INTEGER PRIMARY KEY
)

CREATE TABLE Marcar (
id_consulta INTEGER,
id_login INTEGER,
FOREIGN KEY(id_consulta) REFERENCES Consulta (id_consulta),
FOREIGN KEY(id_login) REFERENCES Login (id_login)
)

CREATE TABLE Representar (
id_hospital INTEGER,
id_func INTEGER,
FOREIGN KEY(id_hospital) REFERENCES Hospital (id_hospital)
)

CREATE TABLE Realizar (
tipo_pag INTEGER,
id_paciente INTEGER,
id_prontuario INTEGER,
id_cliente INTEGER,
PRIMARY KEY(tipo_pag,id_paciente,id_prontuario,id_cliente)
)

CREATE TABLE Funcionario (
cargo VARCHAR(45),
genero VARCHAR(45),
rg VARCHAR(45),
telefone VARCHAR(45),
telefone1 VARCHAR(45),
telefone2 VARCHAR(45),
telefone3 VARCHAR(45),
telefone4 VARCHAR(45),
data_demissao VARCHAR(45),
nome VARCHAR(45),
dt_Nasc VARCHAR(45),
email VARCHAR(45),
email1 VARCHAR(45),
email2 VARCHAR(45),
email3 VARCHAR(45),
email4 VARCHAR(45),
cpf VARCHAR(45),
data_emissao VARCHAR(45),
id_func INTEGER PRIMARY KEY,
id_paciente INTEGER,
id_consulta INTEGER,
id_prontuario INTEGER,
FOREIGN KEY(id_paciente) REFERENCES Paciente (id_paciente),
FOREIGN KEY(id_consulta) REFERENCES Consulta (id_consulta),
FOREIGN KEY(id_prontuario) REFERENCES Paciente (id_paciente)
)

CREATE TABLE Prontuário (
id_paciente VARCHAR(45),
descricao VARCHAR(45),
id_prontuario INTEGER PRIMARY KEY
)

CREATE TABLE Preencher (
id_hospital INTEGER,
id_cadastro INTEGER,
id_login INTEGER,
PRIMARY KEY(id_hospital,id_cadastro,id_login)
)

ALTER TABLE Hospital ADD FOREIGN KEY(tipo_pag) REFERENCES Pagamento (tipo_pag)
ALTER TABLE Representar ADD FOREIGN KEY(id_func) REFERENCES Funcionario (id_func)
