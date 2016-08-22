/*
Cria a tabela de Cidades
- nome: nome da cidade
- estado: estado da cidade (SP, RJ, BA etc)
*/
CREATE TABLE Cidade (
  nome VARCHAR2(30) NOT NULL,
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
  nome VARCHAR2(30) NOT NULL,
  cidade VARCHAR2(30) NOT NULL,
  estado CHAR(2) NOT NULL,
  
  CONSTRAINT PK_Bairro PRIMARY KEY (nome, cidade, estado),
  CONSTRAINT FK_Bairro_Cidade FOREIGN KEY (cidade, estado)
    REFERENCES Cidade (nome, estado) ON DELETE CASCADE
);

/*
Faz: Sequência que gera os números identificadores (ids) 
para a tabela ZonaEleitoral
*/
CREATE SEQUENCE numeroZonaEleitoral
  START WITH 1
  INCREMENT BY 1
  NOMAXVALUE
  MINVALUE 1
  NOCYCLE
  NOCACHE;

/*
Cria a tabela de Zona Eleitoral
- numero: numero identificador da zona
- tamanho: numero de votantes na zona
*/
CREATE TABLE ZonaEleitoral (
  numero INTEGER NOT NULL,
  tamanho INTEGER NOT NULL,
  
  CONSTRAINT PK_ZonaEleitoral PRIMARY KEY (numero)
);

/*
Faz: Sequência que gera os números identificadores (ids) 
para a tabela SessaoEleitoral
*/
CREATE SEQUENCE idSessaoEleitoral
  START WITH 1
  INCREMENT BY 1
  NOMAXVALUE
  MINVALUE 1
  NOCYCLE
  NOCACHE;

/*
Cria a tabela de Sessao Eleitoral
- id: id identificador da sessao
- numero: numero de votantes da sessao
- zona: zona onde está a sessao
- bairro: bairro da sessao
- estado: estado da sessao
- cidade: cidade da sessao
*/
CREATE TABLE SessaoEleitoral (
  id INTEGER NOT NULL,
  numero INTEGER,
  zona INTEGER,
  bairro VARCHAR2(30),
  cidade VARCHAR2(30),
  estado CHAR(2),
  
  CONSTRAINT PK_SessaoEleitoral PRIMARY KEY (id),
  CONSTRAINT UQ_SessaoEleitoral UNIQUE (numero, zona, bairro, cidade, estado),
  CONSTRAINT FK_SessaoEleitoral_ZonaEleitoral FOREIGN KEY (zona)
    REFERENCES ZonaEleitoral (numero) ON DELETE SET NULL
);

/*
Faz: Sequência que gera os números identificadores (ids) 
para a tabela Urna
*/
CREATE SEQUENCE codigoZonaEleitoral
  START WITH 1
  INCREMENT BY 1
  NOMAXVALUE
  MINVALUE 1
  NOCYCLE
  NOCACHE;

/*
Cria a tabela de Urna
- codigo: codigo identificador da urna
- fabricante: fabricante da urna
- numRegistro: numero de registro da urna
- zona: zona da urna
- sessao: sessao onde está a urna
*/
CREATE TABLE Urna (
  codigo INTEGER NOT NULL,
  fabricante VARCHAR2(20) NOT NULL,
  numRegistro INTEGER NOT NULL,
  zona INTEGER NOT NULL,
  sessao INTEGER NOT NULL,
  
  CONSTRAINT PK_Urna PRIMARY KEY (codigo),
  CONSTRAINT FK_Urna_Zona FOREIGN KEY (zona) 
    REFERENCES ZonaEleitoral (numero) ON DELETE SET NULL,
  CONSTRAINT FK_Urna_SessaoEleitoral FOREIGN KEY (sessao)
    REFERENCES SessaoEleitoral (id)
);

/*
Cria a tabela de Eleitor
- CPF: cpf do Eleitor
- RG: rg do eleitor
- tituloEleitoral: titulo eleitoral do eleitor
- nome: nome do eleitor
*/
CREATE TABLE Eleitor (
  CPF VARCHAR2(11) NOT NULL,
  RG VARCHAR2(15),
  tituloEleitoral  VARCHAR2(15),
  nome VARCHAR2(30),
  
  CONSTRAINT PK_Eleitor PRIMARY KEY (CPF),
  CONSTRAINT UQ_Eleitor_RG UNIQUE (RG),
  CONSTRAINT UQ_Eleitor_tituloEleitoral UNIQUE (tituloEleitoral)
);

/*
Cria a tabela de VotoBrancoNulo
- eleitor: nome do eleitor do voto
- urna: urna do voto
- data: data do voto
- isBranco: t para true, f para falso
- isNulo: t para true, f para falso
*/
CREATE TABLE VotoBrancoNulo (
  eleitor VARCHAR2(11) NOT NULL,
  urna INTEGER NOT NULL, 
  data DATE NOT NULL,
  isBranco CHAR(1),
  isNulo CHAR(1),
  
  CONSTRAINT PK_VotoBrancoNulo PRIMARY KEY (eleitor, urna, data),
  CONSTRAINT FK_VotoBrancoNulo_Eleitor FOREIGN KEY (eleitor) 
    REFERENCES Eleitor (CPF) ON DELETE CASCADE,
  CONSTRAINT FK_VotoBrancoNulo_Urna FOREIGN KEY (urna) 
    REFERENCES Urna (codigo)
);

/*
Cria a tabela de Candidato
- CPF: cpf do candidato
- RG: rg do candidato
- sexo: M para masculino, F para feminino
- dataNascimento: data do nascimento do candidato
- naturalidade: naturalidade do candidato
- endereco: endereço do candidato
*/
CREATE TABLE Candidato (
  CPF VARCHAR2(11) NOT NULL,
  RG VARCHAR2(15),
  nome VARCHAR2(30) NOT NULL,
  sexo CHAR(1) NOT NULL,
  dataNascimento DATE NOT NULL,
  naturalidade VARCHAR2(30) NOT NULL,
  endereco VARCHAR2(50) NOT NULL,
  
  CONSTRAINT PK_Candidato PRIMARY KEY (CPF),
  CONSTRAINT UQ_Candidato UNIQUE (RG)
);

/*
Cria a tabela de PartidoPolitico
- numeroEleitoral: numero eleitoral do partido
- nome: nome do partido
- sigla: sigla do partido
- dataCriacao: data de criação do partido
- dataRegistro: data de registro do partido
*/
CREATE TABLE PartidoPolitico (
  numeroEleitoral INTEGER NOT NULL,
  nome VARCHAR2(50) NOT NULL,
  sigla VARCHAR2(5) NOT NULL,
  dataCriacao DATE NOT NULL,
  dataRegistro DATE NOT NULL,
  
  CONSTRAINT PK_PartidoPolitico PRIMARY KEY (numeroEleitoral)
);

/*
Faz: Sequência que gera os números identificadores (ids) 
para a tabela Filiacao
*/
CREATE SEQUENCE idFiliacao
  START WITH 1
  INCREMENT BY 1
  NOMAXVALUE
  MINVALUE 1
  NOCYCLE
  NOCACHE;

/*
Cria a tabela de Filiacao
- id: identificador da filiacao
- numeroFiliacao: numero da filiacao
- candidato: cpf do candidato da filiacao
- partido: numero id do partido da filiacao
*/
CREATE TABLE Filiacao (
  id INTEGER NOT NULL,
  numeroFiliacao INTEGER,
  candidato VARCHAR2(11),
  partido INTEGER,
  
  CONSTRAINT PK_Filiacao PRIMARY KEY (id),
  CONSTRAINT UQ_Filiacao UNIQUE (numeroFiliacao, candidato, partido),
  CONSTRAINT FK_Filiacao_Candidato FOREIGN KEY (candidato)
    REFERENCES Candidato(CPF),
  CONSTRAINT FK_Filiacao_PartidoPolitico FOREIGN KEY (partido)
    REFERENCES PartidoPolitico(numeroEleitoral)
);

/*
Cria a tabela de Concorrente
- filiacao: numero identificador da filiacao do Concorrente
- idCargo: id do cargo do Concorrente
*/
CREATE TABLE Concorrente (
  filiacao INTEGER NOT NULL,
  idCargo INTEGER NOT NULL,
  
  CONSTRAINT PK_Concorrente PRIMARY KEY (filiacao, idCargo),
  CONSTRAINT FK_Concorrente_Filiacao FOREIGN KEY (filiacao)
    REFERENCES Filiacao(id),
  CONSTRAINT FK_Concorrente_Cargo FOREIGN KEY (idCargo)
    REFERENCES Cargo(id)
);

/*
Faz: Sequência que gera os números identificadores (ids) 
para a tabela IntencaoVoto
*/
CREATE SEQUENCE idIntencaoVoto
  START WITH 1
  INCREMENT BY 1
  NOMAXVALUE
  MINVALUE 1
  NOCYCLE
  NOCACHE;

/*
Cria a tabela de IntencaoVoto
- id: numero identificador da intencao de voto
- eleitor: eleitor da intencao de voto
- filiacaoConcorrente: filiacao concorrente da intencao de voto
- cargoConcorrente: cargo concorrente da intencao de voto
- data: data da intencao de voto
*/
CREATE TABLE IntencaoVoto (
  id INTEGER NOT NULL,
  eleitor VARCHAR2(11),
  filiacaoConcorrente INTEGER,
  cargoConcorrente INTEGER,
  data DATE NOT NULL,
  
  CONSTRAINT PK_IntencaoVoto PRIMARY KEY (id),
  CONSTRAINT UQ_IntencaoVoto UNIQUE (eleitor, filiacaoConcorrente,
                                     cargoConcorrente),
  CONSTRAINT UQ_IntencaoVoto1 UNIQUE (eleitor, data),
  CONSTRAINT FK_IntencaoVoto_Concorrente FOREIGN KEY (filiacaoConcorrente,
                                                      cargoConcorrente)
    REFERENCES Concorrente(filiacao, idCargo)
);








