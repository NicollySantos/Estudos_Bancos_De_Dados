-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE mouse (
    desempenho varchar,
    preco varchar,
    design varchar,
    estrutura varchar,
    resistencia varchar,
    modelo INT,
    marca varchar,
    compatibilidade varchar,
    especificacoes varchar,
    id_mouse INT PRIMARY KEY
);

CREATE TABLE mouse_pad (
    omtimizacao varchar,
    preco varchar,
    estrutura varchar,
    desempenho varchar,
    marca varchar,
    resistencia varchar,
    modelo INT,
    design varchar,
    conforto varchar,
    material varchar,
    id_mousePAD INT
);

CREATE TABLE HD (
    capacidade varchar,
    marca varchar,
    design varchar,
    omtimizacao varchar,
    desempenho varchar,
    estrutura varchar,
    modelo INT,
    preco varchar,
    resistencia varchar,
    velocidade varchar,
    versatibilidade varchar,
    integridade varchar,
    energia varchar,
    dimensoes varchar,
    especificacoes varchar
);

CREATE TABLE processador (
    marca varchar,
    dimensoes varchar,
    memoria varchar,
    desempenho varchar,
    resistencia varchar,
    arquitetura varchar,
    compatibilidade varchar,
    preco varchar,
    modelo INT,
    capacidade varchar,
    especificacoes varchar
);

CREATE TABLE fonte (
    especificacoes varchar,
    modelo INT,
    marca varchar,
    arquitetura varchar,
    resistencia varchar,
    preco varchar,
    desempenho varchar,
    compatibilidade varchar,
    dimensoes varchar,
    protecao varchar,
    velocidade_da_ventoinha varchar
);

CREATE TABLE ventoinha (
    resistencia varchar,
    dimensoes varchar,
    arquitetura varchar,
    desempenho varchar,
    especificacoes varchar,
    marca varchar,
    preco varchar,
    modelo INT
);

CREATE TABLE teclado (
    desempenho varchar,
    especificacoes varchar,
    preco varchar,
    marca varchar,
    modelo INT,
    resistencia varchar,
    design varchar,
    dimensoes varchar
);

CREATE TABLE cooler (
    desempenho varchar,
    velocidade varchar,
    especificacoes varchar,
    dimensoes varchar,
    design varchar,
    preco varchar,
    marca varchar,
    modelo INT,
    nivel_ruido varchar
);

CREATE TABLE placa_mae (
    armazenmaneto varchar,
    otimizacao varchar,
    desempenho varchar,
    especificacoes varchar,
    dimensoes varchar,
    marca varchar,
    modelo INT,
    design varchar,
    preco varchar,
    memoria varchar,
    suporte_CPU varchar,
    grafico_integrado varchar,
    slot_expansao varchar,
    RAID varchar,
    USB varchar,
    interface varchar,
    suporte varchar,
    conector_externo varchar,
    recurso_LED varchar,
    conector_interno varchar
);

CREATE TABLE placa_video (
    marca varchar,
    memoria varchar,
    dimensoes varchar,
    recursos varchar,
    SO_suportado varchar,
    modelo INT,
    interface varchar,
    GPU varchar,
    saida_conexao varchar,
    exibicao varchar,
    desempenho varchar,
    preco varchar,
    especificacoes varchar,
    energia varchar
);

CREATE TABLE gabinete (
    desempenho varchar,
    resistencia varchar,
    compatibilidade varchar,
    dimensoes varchar,
    especificacoes varchar,
    marca varchar,
    modelo INT,
    arquitetura varchar,
    preco varchar
);

CREATE TABLE cadeira_gamer (
    marca varchar,
    resistencia varchar,
    desempenho varchar,
    recursos varchar,
    dimensoes varchar,
    preco varchar,
    especificacoes varchar,
    modelo INT
);

CREATE TABLE MONITOR (
    desempenho varchar,
    modelo INT,
    imagem varchar,
    dimensoes varchar,
    preco varchar,
    especificacoes varchar,
    potencia varchar,
    entrada_saida varchar,
    recursos varchar,
    marca varchar,
    VESA varchar,
    recursos varchar
);

CREATE TABLE fita_RGB (
    dimensoes varchar,
    compatibilidade varchar,
    desempenho varchar,
    especificacoes varchar,
    capacidade varchar,
    marca varchar,
    design_estilo varchar,
    modelo INT,
    preco varchar,
    conesctividade varchar,
    recursos varchar
);

CREATE TABLE Vendedor_Cliente_Pagamento (
    cpf varchar,
    nome varchar,
    rg varchar,
    dt_nasc varchar,
    id_vendedor INT,
    contato_vendedor varchar,
    id_cliente INT,
    passaporte varchar,
    form_pagamento varchar,
    contato_cliente varchar,
    fk_telefone_telefone_PK INT,
    rua varchar,
    numero varchar,
    bairro varchar,
    complemento varchar,
    cidade varchar,
    estado varchar,
    fk_email_email_PK INT,
    genero varchar,
    id_pagamento INT,
    codigo_compra INT,
    id_cliente INT,
    id_vendedor INT,
    PRIMARY KEY (id_vendedor, id_cliente, id_pagamento)
);

CREATE TABLE Produto (
    id_produto INT PRIMARY KEY,
    nome varchar,
    marca varchar,
    modelo varchar,
    preco varchar,
    categoria varchar,
    quantidade varchar,
    data_compra varchar,
    id_cliente INT,
    id_fornecedor INT,
    dt_validade INT
);

CREATE TABLE Loja (
    cnpj varchar,
    nome_loja varchar,
    endereco varchar,
    num_vend varchar,
    id_loja INT PRIMARY KEY,
    tabela_preco varchar,
    fk_Produto_id_produto INT,
    fk_Garantia_id_garantia INT,
    fk_Pagamento_id_pagamento INT
);

CREATE TABLE Garantia (
    form_pagamento varchar,
    id_cliente INT,
    codigo_compra INT,
    data_pedido varchar,
    tempo_garantia varchar,
    desc_produto varchar,
    problema_produto varchar,
    id_produto INT,
    contato_cliente varchar,
    id_vendedor INT,
    id_garantia INT PRIMARY KEY
);

CREATE TABLE Fornecedor (
    id_forncedor varchar,
    data_distribuicao varchar,
    cnpj varchar,
    id_loja INT,
    id_produto INT,
    endereco varchar,
    num_vend INT,
    tabela_preco varchar
);

CREATE TABLE compra (
    id_compra int PRIMARY KEY,
    id_cliente int,
    id_produto int
);

CREATE TABLE Plataforma (
    admin varchar,
    nome_plat int PRIMARY KEY,
    id_loja varchar
);

CREATE TABLE Usuario (
    id_usuario int PRIMARY KEY
);

CREATE TABLE Cadastro (
    id_cadastro int PRIMARY KEY,
    nome varchar,
    email varchar,
    senha varchar,
    telefone varchar,
    complemento varchar,
    cep varchar,
    numero INT,
    bairro varchar,
    cidade varchar,
    estado varchar
);

CREATE TABLE Login (
    id_login INT PRIMARY KEY,
    email varchar,
    senha varchar
);

CREATE TABLE telefone (
    telefone_PK INT NOT NULL PRIMARY KEY,
    telefone varchar
);

CREATE TABLE email (
    email_PK INT NOT NULL PRIMARY KEY,
    email varchar
);

CREATE TABLE comprar (
    fk_Produto_id_produto INT,
    fk_Cliente_id_cliente INT
);

CREATE TABLE fornece (
    fk_Produto_id_produto INT
);

CREATE TABLE acessar (
    fk_Plataforma_nome_plat int,
    fk_Usuario_id_usuario int
);

CREATE TABLE preencher_Plataforma_Cadastro_Login (
    fk_Plataforma_nome_plat int,
    fk_Cadastro_id_cadastro int,
    fk_Login_id_login INT
);

CREATE TABLE ter (
    fk_Plataforma_nome_plat int,
    fk_Loja_id_loja INT
);
 
ALTER TABLE Vendedor_Cliente_Pagamento ADD CONSTRAINT FK_Vendedor_Cliente_Pagamento_2
    FOREIGN KEY (fk_telefone_telefone_PK)
    REFERENCES telefone (telefone_PK);
 
ALTER TABLE Vendedor_Cliente_Pagamento ADD CONSTRAINT FK_Vendedor_Cliente_Pagamento_3
    FOREIGN KEY (fk_email_email_PK)
    REFERENCES email (email_PK);
 
ALTER TABLE Loja ADD CONSTRAINT FK_Loja_2
    FOREIGN KEY (fk_Produto_id_produto)
    REFERENCES Produto (id_produto)
    ON DELETE RESTRICT;
 
ALTER TABLE Loja ADD CONSTRAINT FK_Loja_3
    FOREIGN KEY (fk_Garantia_id_garantia)
    REFERENCES Garantia (id_garantia)
    ON DELETE RESTRICT;
 
ALTER TABLE Loja ADD CONSTRAINT FK_Loja_4
    FOREIGN KEY (fk_Pagamento_id_pagamento)
    REFERENCES ??? (???);
 
ALTER TABLE comprar ADD CONSTRAINT FK_comprar_1
    FOREIGN KEY (fk_Produto_id_produto)
    REFERENCES Produto (id_produto)
    ON DELETE RESTRICT;
 
ALTER TABLE comprar ADD CONSTRAINT FK_comprar_2
    FOREIGN KEY (fk_Cliente_id_cliente)
    REFERENCES ??? (???);
 
ALTER TABLE fornece ADD CONSTRAINT FK_fornece_1
    FOREIGN KEY (fk_Produto_id_produto)
    REFERENCES Produto (id_produto)
    ON DELETE RESTRICT;
 
ALTER TABLE acessar ADD CONSTRAINT FK_acessar_1
    FOREIGN KEY (fk_Plataforma_nome_plat)
    REFERENCES Plataforma (nome_plat)
    ON DELETE SET NULL;
 
ALTER TABLE acessar ADD CONSTRAINT FK_acessar_2
    FOREIGN KEY (fk_Usuario_id_usuario)
    REFERENCES Usuario (id_usuario)
    ON DELETE SET NULL;
 
ALTER TABLE preencher_Plataforma_Cadastro_Login ADD CONSTRAINT FK_preencher_Plataforma_Cadastro_Login_1
    FOREIGN KEY (fk_Plataforma_nome_plat)
    REFERENCES Plataforma (nome_plat)
    ON DELETE NO ACTION;
 
ALTER TABLE preencher_Plataforma_Cadastro_Login ADD CONSTRAINT FK_preencher_Plataforma_Cadastro_Login_2
    FOREIGN KEY (fk_Cadastro_id_cadastro)
    REFERENCES Cadastro (id_cadastro)
    ON DELETE NO ACTION;
 
ALTER TABLE preencher_Plataforma_Cadastro_Login ADD CONSTRAINT FK_preencher_Plataforma_Cadastro_Login_3
    FOREIGN KEY (fk_Login_id_login)
    REFERENCES Login (id_login)
    ON DELETE NO ACTION;
 
ALTER TABLE ter ADD CONSTRAINT FK_ter_1
    FOREIGN KEY (fk_Plataforma_nome_plat)
    REFERENCES Plataforma (nome_plat)
    ON DELETE SET NULL;
 
ALTER TABLE ter ADD CONSTRAINT FK_ter_2
    FOREIGN KEY (fk_Loja_id_loja)
    REFERENCES Loja (id_loja)
    ON DELETE SET NULL;
