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
id_cliente INTEGER PRIMARY KEY,
id_pag INTEGER
)

CREATE TABLE Pedido (
valor_frete VARCHAR(45),
data_saida VARCHAR(45),
data_hora VARCHAR(45),
id_cliente VARCHAR(45),
id_pedido INTEGER PRIMARY KEY
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
id_mercado VARCHAR(45),
id_func INTEGER PRIMARY KEY,
id_cliente INTEGER,
FOREIGN KEY(id_cliente) REFERENCES Cliente (id_cliente)
)

CREATE TABLE Categoria (
categoria VARCHAR(45),
id_categoria INTEGER PRIMARY KEY
)

CREATE TABLE Restaurante (
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
id_restaurante INTEGER PRIMARY KEY,
num_func VARCHAR(45)
)

CREATE TABLE Restaurante_Venda (
preco_venda VARCHAR(45),
quantidade_vendas VARCHAR(45),
id_venda INTEGER PRIMARY KEY
)

CREATE TABLE Produto (
quantidade VARCHAR(45),
preco_unitario VARCHAR(45),
nome VARCHAR(45),
id_categoria VARCHAR(45),
id_produto INTEGER PRIMARY KEY
)

CREATE TABLE Ingredientes (
id_produto VARCHAR(45),
dt_fabri VARCHAR(45),
nome VARCHAR(45),
dt_validade VARCHAR(45),
id_ingrediente VARCHAR(45),
id_fornecedor INTEGER PRIMARY KEY
)

CREATE TABLE Fornecedor (
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
id_fornecedor INTEGER PRIMARY KEY
)

CREATE TABLE Pagamento (
data_pag VARCHAR(45),
id_func VARCHAR(45),
id_cliente VARCHAR(45),
tipo_pag VARCHAR(45),
id_pedido VARCHAR(45),
id_pag INTEGER PRIMARY KEY,
id_venda INTEGER,
FOREIGN KEY(id_venda) REFERENCES Restaurante_Venda (id_venda)
)

CREATE TABLE Plataforma (
admin VARCHAR(45),
nome_plat VARCHAR(45),
id_restaurante INTEGER PRIMARY KEY
)

CREATE TABLE Login (
senha VARCHAR(45),
email VARCHAR(45),
id_login INTEGER PRIMARY KEY
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
id_cadastro INTEGER PRIMARY KEY,
email VARCHAR(45),
cpf VARCHAR(45),
senha VARCHAR(45)
)

CREATE TABLE Usuário (
id_usuario INTEGER PRIMARY KEY
)

CREATE TABLE Bebidas (
marca VARCHAR(45),
id_bebida INTEGER PRIMARY KEY
)

CREATE TABLE conter (
id_restaurante INTEGER,
id_categoria INTEGER,
FOREIGN KEY(id_restaurante) REFERENCES Restaurante (id_restaurante),
FOREIGN KEY(id_categoria) REFERENCES Categoria (id_categoria)
)

CREATE TABLE escolher (
id_produto INTEGER,
id_pedido INTEGER,
FOREIGN KEY(id_produto) REFERENCES Produto (id_produto),
FOREIGN KEY(id_pedido) REFERENCES Pedido (id_pedido)
)

CREATE TABLE passar (
id_func INTEGER,
id_venda INTEGER,
FOREIGN KEY(id_func) REFERENCES Funcionario (id_func),
FOREIGN KEY(id_venda) REFERENCES Restaurante_Venda (id_venda)
)

CREATE TABLE fazer (
id_cliente INTEGER,
id_pedido INTEGER,
FOREIGN KEY(id_cliente) REFERENCES Cliente (id_cliente),
FOREIGN KEY(id_pedido) REFERENCES Pedido (id_pedido)
)

CREATE TABLE receber (
id_venda INTEGER,
id_restaurante INTEGER,
FOREIGN KEY(id_venda) REFERENCES Restaurante_Venda (id_venda),
FOREIGN KEY(id_restaurante) REFERENCES Restaurante (id_restaurante)
)

CREATE TABLE fornece (
id_fornecedor INTEGER,
id_bebida INTEGER,
PRIMARY KEY(id_fornecedor,id_bebida)
)

CREATE TABLE deter (
id_categoria INTEGER,
id_produto INTEGER,
FOREIGN KEY(id_categoria) REFERENCES Categoria (id_categoria),
FOREIGN KEY(id_produto) REFERENCES Produto (id_produto)
)

CREATE TABLE possuir (
id_produto INTEGER,
id_fornecedor INTEGER,
FOREIGN KEY(id_produto) REFERENCES Produto (id_produto),
FOREIGN KEY(id_fornecedor) REFERENCES Ingredientes (id_fornecedor)
)

CREATE TABLE ter (
id_restaurante INTEGER,
FOREIGN KEY(id_restaurante) REFERENCES Plataforma (id_restaurante)
)

CREATE TABLE acessar (
id_restaurante INTEGER,
id_usuario INTEGER,
FOREIGN KEY(id_restaurante) REFERENCES Plataforma (id_restaurante),
FOREIGN KEY(id_usuario) REFERENCES Usuário (id_usuario)
)

CREATE TABLE preencher (
id_restaurante INTEGER,
id_cadastro INTEGER,
id_login INTEGER,
PRIMARY KEY(id_restaurante,id_cadastro,id_login)
)

CREATE TABLE realizar (
id_login INTEGER,
id_pedido INTEGER,
FOREIGN KEY(id_login) REFERENCES Login (id_login),
FOREIGN KEY(id_pedido) REFERENCES Pedido (id_pedido)
)

ALTER TABLE Cliente ADD FOREIGN KEY(id_pag) REFERENCES Pagamento (id_pag)
