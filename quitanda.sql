-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Categoria (
categoria VARCHAR(45),
id_categoria VARCHAR(45) PRIMARY KEY,
id_tamanho VARCHAR(45)
)

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
id_cliente INTEGER PRIMARY KEY,
cpf VARCHAR(45),
id_pag VARCHAR(45)
)

CREATE TABLE Funcionario (
telefone VARCHAR(45),
telefone1 VARCHAR(45),
telefone2 VARCHAR(45),
telefone3 VARCHAR(45),
telefone4 VARCHAR(45),
id_venda VARCHAR(45),
id_pizzaria VARCHAR(45),
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
id_func VARCHAR(45) PRIMARY KEY,
id_pedido VARCHAR(45),
id_cliente INTEGER,
FOREIGN KEY(id_cliente) REFERENCES Cliente (id_cliente)
)

CREATE TABLE Produto (
quantidade VARCHAR(45),
id_categoria VARCHAR(45),
id_produto VARCHAR(45) PRIMARY KEY,
id_tamanho VARCHAR(45),
preco_unitario VARCHAR(45),
nome VARCHAR(45)
)

CREATE TABLE Ingredientes (
nome VARCHAR(45),
dt_fabri VARCHAR(45),
id_produto VARCHAR(45),
dt_validade VARCHAR(45),
id_ingrediente VARCHAR(45),
id_fornecedor VARCHAR(45) PRIMARY KEY
)

CREATE TABLE Pagamento (
tipo_pag VARCHAR(45),
data_pag VARCHAR(45),
id_pedido VARCHAR(45),
id_func VARCHAR(45),
id_cliente VARCHAR(45),
id_pag VARCHAR(45) PRIMARY KEY,
id_venda VARCHAR(45)
)

CREATE TABLE Cadastro (
telefone VARCHAR(45),
telefone1 VARCHAR(45),
telefone2 VARCHAR(45),
telefone3 VARCHAR(45),
telefone4 VARCHAR(45),
nome VARCHAR(45),
cep VARCHAR(45),
complemento VARCHAR(45),
numero VARCHAR(45),
bairro VARCHAR(45),
cidade VARCHAR(45),
estado VARCHAR(45),
email VARCHAR(45),
cpf VARCHAR(45),
senha VARCHAR(45),
id_cadastro INTEGER PRIMARY KEY
)

CREATE TABLE Usuário (
id_usuario INTEGER PRIMARY KEY
)

CREATE TABLE Pedido (
valor_frete VARCHAR(45),
id_pedido VARCHAR(45) PRIMARY KEY,
data_saida VARCHAR(45),
data_hora VARCHAR(45),
id_cliente VARCHAR(45)
)

CREATE TABLE Login (
senha VARCHAR(45),
email VARCHAR(45),
id_login INTEGER PRIMARY KEY
)

CREATE TABLE Plataforma (
admin VARCHAR(45),
nome_plat VARCHAR(45),
id_quitanda INTEGER PRIMARY KEY
)

CREATE TABLE Fornecedor (
bairro VARCHAR(45),
numero VARCHAR(45),
complemento VARCHAR(45),
rua VARCHAR(45),
estado VARCHAR(45),
cidade VARCHAR(45),
id_fornecedor VARCHAR(45) PRIMARY KEY,
cnpj VARCHAR(45),
telefone VARCHAR(45),
telefone1 VARCHAR(45),
telefone2 VARCHAR(45),
telefone3 VARCHAR(45),
telefone4 VARCHAR(45),
nome_responsavel VARCHAR(45),
email VARCHAR(45),
email1 VARCHAR(45),
email2 VARCHAR(45),
email3 VARCHAR(45),
email4 VARCHAR(45),
nome VARCHAR(45)
)

CREATE TABLE Bebida (
id_bebida VARCHAR(45),
marca VARCHAR(45)
)

CREATE TABLE Quitanda (
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
id_venda VARCHAR(45),
id_quitanda VARCHAR(45) PRIMARY KEY,
num_func VARCHAR(45)
)

CREATE TABLE Quitanda_Venda (
preco_venda VARCHAR(45),
quantidade_vendas VARCHAR(45),
id_venda VARCHAR(45) PRIMARY KEY
)

CREATE TABLE Tamanho_Valores (
id_tamanho VARCHAR(45) PRIMARY KEY,
valor VARCHAR(45),
nome VARCHAR(45),
id_produto VARCHAR(45),
id_categoria VARCHAR(45)
)

CREATE TABLE conter (
id_quitanda VARCHAR(45),
id_categoria VARCHAR(45),
FOREIGN KEY(id_quitanda) REFERENCES Quitanda (id_quitanda),
FOREIGN KEY(id_categoria) REFERENCES Categoria (id_categoria)
)

CREATE TABLE relacionar (
id_tamanho VARCHAR(45),
id_produto VARCHAR(45),
FOREIGN KEY(id_tamanho) REFERENCES Tamanho_Valores (id_tamanho),
FOREIGN KEY(id_produto) REFERENCES Produto (id_produto)
)

CREATE TABLE passar (
id_func VARCHAR(45),
id_venda VARCHAR(45),
FOREIGN KEY(id_func) REFERENCES Funcionario (id_func),
FOREIGN KEY(id_venda) REFERENCES Quitanda_Venda (id_venda)
)

CREATE TABLE fazer (
id_cliente INTEGER,
id_pedido VARCHAR(45),
FOREIGN KEY(id_cliente) REFERENCES Cliente (id_cliente),
FOREIGN KEY(id_pedido) REFERENCES Pedido (id_pedido)
)

CREATE TABLE receber (
id_venda VARCHAR(45),
id_quitanda VARCHAR(45),
FOREIGN KEY(id_venda) REFERENCES Quitanda_Venda (id_venda),
FOREIGN KEY(id_quitanda) REFERENCES Quitanda (id_quitanda)
)

CREATE TABLE possuir (
id_produto VARCHAR(45),
id_fornecedor VARCHAR(45),
FOREIGN KEY(id_produto) REFERENCES Produto (id_produto),
FOREIGN KEY(id_fornecedor) REFERENCES Ingredientes (id_fornecedor)
)

CREATE TABLE preencher (
id_quitanda INTEGER,
id_cadastro INTEGER,
id_login INTEGER,
PRIMARY KEY(id_quitanda,id_cadastro,id_login)
)

CREATE TABLE acessar (
id_usuario INTEGER,
id_quitanda INTEGER,
FOREIGN KEY(id_usuario) REFERENCES Usuário (id_usuario),
FOREIGN KEY(id_quitanda) REFERENCES Plataforma (id_quitanda)
)

CREATE TABLE realizar (
id_login INTEGER,
id_pedido VARCHAR(45),
FOREIGN KEY(id_login) REFERENCES Login (id_login),
FOREIGN KEY(id_pedido) REFERENCES Pedido (id_pedido)
)

CREATE TABLE ter (
id_quitanda INTEGER,
FOREIGN KEY(id_quitanda) REFERENCES Plataforma (id_quitanda)
)

CREATE TABLE fornece (
id_fornecedor VARCHAR(45) PRIMARY KEY
)

CREATE TABLE escolher (
id_pedido VARCHAR(45),
id_produto VARCHAR(45),
PRIMARY KEY(id_pedido,id_produto)
)

ALTER TABLE Categoria ADD FOREIGN KEY(id_tamanho) REFERENCES Tamanho_Valores (id_tamanho)
ALTER TABLE Cliente ADD FOREIGN KEY(id_pag) REFERENCES Pagamento (id_pag)
ALTER TABLE Pagamento ADD FOREIGN KEY(id_venda) REFERENCES Quitanda_Venda (id_venda)
