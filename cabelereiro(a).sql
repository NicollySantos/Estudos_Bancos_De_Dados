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

CREATE TABLE pagamento (
tipo_pag VARCHAR(45),
data_pag VARCHAR(45),
id_pedido VARCHAR(45),
id_func VARCHAR(45),
id_cliente VARCHAR(45),
id_pag INTEGER PRIMARY KEY,
id_venda INTEGER
)

CREATE TABLE Produto (
quantidade VARCHAR(45),
preco_unitario VARCHAR(45),
nome VARCHAR(45),
id_categoria VARCHAR(45),
id_produto INTEGER PRIMARY KEY
)

CREATE TABLE Fornecedor (
cidade VARCHAR(45),
estado VARCHAR(45),
rua VARCHAR(45),
complemento VARCHAR(45),
numero VARCHAR(45),
bairro VARCHAR(45),
cnpj VARCHAR(45),
nome VARCHAR(45),
nome_responsavel VARCHAR(45),
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
id_fornecedor INTEGER PRIMARY KEY
)

CREATE TABLE Serviços (
serviço VARCHAR(45),
id_servico INTEGER PRIMARY KEY
)

CREATE TABLE Cabelereiro(a)_Venda (
preco_venda VARCHAR(45),
quantidade_vendas VARCHAR(45),
id_venda INTEGER PRIMARY KEY
)

CREATE TABLE Cabelereiro(a) (
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
id_cabelereiro INTEGER PRIMARY KEY,
Atributo1 VARCHAR(45)
)

CREATE TABLE conter (
id_cabelereiro INTEGER,
id_servico INTEGER,
FOREIGN KEY(id_cabelereiro) REFERENCES Cabelereiro(a) (id_cabelereiro),
FOREIGN KEY(id_servico) REFERENCES Serviços (id_servico)
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
FOREIGN KEY(id_venda) REFERENCES Cabelereiro(a)_Venda (id_venda)
)

CREATE TABLE consultar (
id_venda INTEGER,
id_cabelereiro INTEGER,
FOREIGN KEY(id_venda) REFERENCES Cabelereiro(a)_Venda (id_venda),
FOREIGN KEY(id_cabelereiro) REFERENCES Cabelereiro(a) (id_cabelereiro)
)

CREATE TABLE possuir (
id_servico INTEGER,
id_produto INTEGER,
FOREIGN KEY(id_servico) REFERENCES Serviços (id_servico),
FOREIGN KEY(id_produto) REFERENCES Produto (id_produto)
)

CREATE TABLE fornecer (
id_produto INTEGER,
id_fornecedor INTEGER,
FOREIGN KEY(id_produto) REFERENCES Produto (id_produto),
FOREIGN KEY(id_fornecedor) REFERENCES Fornecedor (id_fornecedor)
)

CREATE TABLE solicitar (
id_cliente INTEGER,
id_pedido INTEGER,
FOREIGN KEY(id_cliente) REFERENCES Cliente (id_cliente),
FOREIGN KEY(id_pedido) REFERENCES Pedido (id_pedido)
)

ALTER TABLE Cliente ADD FOREIGN KEY(id_pag) REFERENCES pagamento (id_pag)
ALTER TABLE pagamento ADD FOREIGN KEY(id_venda) REFERENCES Cabelereiro(a)_Venda (id_venda)
