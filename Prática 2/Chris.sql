/*
Cria a tabela de Cidades
- nome: nome da cidade
- estado: estado da cidade (SP, RJ, BA etc)
*/
CREATE TABLE Cidade (
  nome VARCHAR(30) NOT NULL,
  estado CHAR(2) NOT NULL,
  
  CONSTRAINT PK_Cidade PRIMARY KEY (nome, estado)
);

/*
Cria a tabela de Bairros
- nome: nome do bairro
- cidade: nome da cidade onde o bairro se encontra
- estado: estado do bairro (SP, RJ, BA etc)
*/
CREATE TABLE Bairro (
  nome VARCHAR(30) NOT NULL,
  cidade VARCHAR(30) NOT NULL,
  estado CHAR(2) NOT NULL,
  
  CONSTRAINT PK_Bairro PRIMARY KEY (nome, cidade, estado),
  CONSTRAINT FK_Bairro_Cidade FOREIGN KEY (cidade, estado)
    REFERENCES Cidade (nome, estado) ON DELETE CASCADE
);

CREATE TABLE ZonaEleitoral (
  numero NUMBER NOT NULL,
  tamanho INTEGER NOT NULL,
  
  CONSTRAINT FK_ZonaEleitoral PRIMARY KEY (numero)
);

CREATE TABLE SessaoEleitoral (
  id NUMBER NOT NULL,
  numero NUMBER,
  zona NUMBER,
  bairro VARCHAR(30),
  cidade VARCHAR(30),
  estado CHAR(2),
  
  CONSTRAINT PK_SessaoEleitoral PRIMARY KEY (id),
  CONSTRAINT UQ_SessaoEleitoral UNIQUE (numero, zona, bairro, cidade, estado),
  CONSTRAINT FK_SessaoEleitoral_ZonaEleitoral FOREIGN KEY (zona)
    REFERENCES ZonaEleitoral (numero) ON DELETE SET NULL
);

CREATE TABLE Urna (
  codigo NUMBER NOT NULL,
  fabricante VARCHAR(20) NOT NULL,
  numRegistro NUMBER NOT NULL,
  zona NUMBER NOT NULL,
  sessao NUMBER NOT NULL,
  
  CONSTRAINT PK_Urna PRIMARY KEY (codigo),
  CONSTRAINT FK_Urna_Zona FOREIGN KEY (zona) 
    REFERENCES ZonaEleitoral (numero) ON DELETE SET NULL,
  CONSTRAINT FK_Urna_SessaoEleitoral FOREIGN KEY (sessao)
    REFERENCES SessaoEleitoral (id)
);

CREATE TABLE Eleitor (
  CPF VARCHAR(11) NOT NULL,
  RG VARCHAR(15),
  tituloEleitoral  VARCHAR(15),
  nome VARCHAR(30),
  
  CONSTRAINT PK_Eleitor PRIMARY KEY (CPF),
  CONSTRAINT UQ_Eleitor_RG UNIQUE (RG),
  CONSTRAINT UQ_Eleitor_tituloEleitoral UNIQUE (tituloEleitoral)
);

CREATE TABLE VotoBrancoNulo (
  eleitor VARCHAR(11) NOT NULL,
  urna NUMBER NOT NULL, 
  data DATE NOT NULL,
  isBranco CHAR(1),
  isNulo CHAR(1),
  
  CONSTRAINT PK_VotoBrancoNulo PRIMARY KEY (eleitor, urna, data),
  CONSTRAINT FK_VotoBrancoNulo_Eleitor FOREIGN KEY (eleitor) 
    REFERENCES Eleitor (CPF) ON DELETE CASCADE,
  CONSTRAINT FK_VotoBrancoNulo_Urna FOREIGN KEY (urna) 
    REFERENCES Urna (codigo)
);









