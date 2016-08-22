/* --------------- Sequencias Utilizadas pelas Tabelas --------------- */

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
Faz: Sequência que gera os números identificadores (ids) 
para a tabela Urna
*/
CREATE SEQUENCE codigoUrna
  START WITH 1
  INCREMENT BY 1
  NOMAXVALUE
  MINVALUE 1
  NOCYCLE
  NOCACHE;
  
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
  Sequence: ID Voto
  Faz: Sequencia que gera os numeros identificadores (ids) para a tabela Voto
*/
CREATE SEQUENCE idVoto
  START WITH 1
  INCREMENT BY 1
  NOMAXVALUE
  MINVALUE 1
  NOCYCLE
  NOCACHE;

/*
  Sequence: ID Cargo
  Faz: Sequencia que gera os numeros identificadores (ids) para a tabela Cargo
*/
CREATE SEQUENCE idCargo
  START WITH 1
  INCREMENT BY 1
  NOMAXVALUE
  MINVALUE 1
  NOCYCLE
  NOCACHE;

/* ----------------------- Tabelas ----------------------- */  

/*
Cria a tabela de Cidades
- nome: nome da cidade
- estado: estado da cidade (SP, RJ, BA etc)
*/
CREATE TABLE Cidade (
  nome VARCHAR2(30) NOT NULL,
  
  estado CHAR(2) NOT NULL,
  
  CONSTRAINT PK_Cidade PRIMARY KEY (nome, estado),
  CONSTRAINT CHECK_ESTADO CHECK (UPPER(estado) IN ('AC', 'AL', 'AP', 'AM', 'BA', 'CE', 'DF', 'ES', 'GO', 'MA', 'MT', 'MS', 'MG', 'PA', 'PB', 'PR', 'PE', 'PI', 'RJ', 'RN', 'RS', 'RO', 'RR', 'SC', 'SP', 'SE', 'TO'))
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
  CONSTRAINT FK_Bairro_Cidade FOREIGN KEY (cidade, estado) REFERENCES Cidade (nome, estado) ON DELETE CASCADE
);

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
  CONSTRAINT FK_SessaoEleitoral FOREIGN KEY (bairro, cidade, estado) REFERENCES Bairro(nome, cidade, estado) ON DELETE CASCADE,
  CONSTRAINT FK_SessaoEl_ZonaEl FOREIGN KEY (zona)
    REFERENCES ZonaEleitoral (numero) ON DELETE SET NULL
);

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
  CONSTRAINT FK_Urna_Zona FOREIGN KEY (zona) REFERENCES ZonaEleitoral (numero) ON DELETE SET NULL,
  CONSTRAINT FK_Urna_SessaoEleitoral FOREIGN KEY (sessao) REFERENCES SessaoEleitoral (id)
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
  CONSTRAINT FK_VotoBrancoNulo_Eleitor FOREIGN KEY (eleitor) REFERENCES Eleitor (CPF) ON DELETE CASCADE,
  CONSTRAINT FK_VotoBrancoNulo_Urna FOREIGN KEY (urna) REFERENCES Urna (codigo),
  CONSTRAINT CHECK_ISBRANCO CHECK (isBranco IN ('T', 'F')),
  CONSTRAINT CHECK_ISNULO CHECK (isNulo IN ('T', 'F'))
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
  CONSTRAINT UQ_Candidato UNIQUE (RG),
  CONSTRAINT CHECK_SEXO CHECK (UPPER(sexo) in ('F','M'))
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
  CONSTRAINT FK_Filiacao_Candidato FOREIGN KEY (candidato) REFERENCES Candidato(CPF),
  CONSTRAINT FK_Filiacao_PartidoPolitico FOREIGN KEY (partido) REFERENCES PartidoPolitico(numeroEleitoral)
);

/*
  Table: Cargo
  O que armazena: O numero identificador do cargo e a esfera a qual ele pertence
  As possiveis esferas sao: Municipal, Estadual e Federal
*/  
CREATE TABLE Cargo ( 
  id      INTEGER NOT NULL,
  
  esfera  VARCHAR2(9) NOT NULL, /* Contem 9 caracteres pois a maior palavra armazenada e 'Municipal' */       
  
  CONSTRAINT PK_CARGO PRIMARY KEY (id),
  CONSTRAINT CHECK_ESFERA CHECK (UPPER(esfera) in ('MUNICIPAL','ESTADUAL','FEDERAL'))
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
  CONSTRAINT FK_Concorrente_Filiacao FOREIGN KEY (filiacao) REFERENCES Filiacao(id),
  CONSTRAINT FK_Concorrente_Cargo FOREIGN KEY (idCargo) REFERENCES Cargo(id)
);

/*
  Table: Voto
  O que armazena: Os votos de eleitores em uma urna, para um determinado candidato
  e em uma determinada data
*/
CREATE TABLE Voto (
  id                    INTEGER NOT NULL,
  
  eleitor               VARCHAR2(11) NOT NULL,
  urna                  INTEGER,
  filiacaoConcorrente   INTEGER,
  cargoConcorrente      INTEGER,
  data                  DATE NOT NULL,    

  CONSTRAINT PK_VOTO PRIMARY KEY (id),
  CONSTRAINT SK_VOTO UNIQUE (eleitor, urna, filiacaoConcorrente, cargoConcorrente, data),
  CONSTRAINT TK_VOTO UNIQUE (eleitor, data),
  CONSTRAINT FK_VOTO_ELEITOR FOREIGN KEY (eleitor) REFERENCES Eleitor(CPF),
  CONSTRAINT FK_VOTO_URNA FOREIGN KEY (urna) REFERENCES Urna(codigo) ON DELETE SET NULL,
  CONSTRAINT FK_VOTO_CONCORRENTE FOREIGN KEY (filiacaoConcorrente,cargoConcorrente) REFERENCES Concorrente(filiacao,idCargo) ON DELETE SET NULL
);

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
  CONSTRAINT UQ_IntencaoVoto UNIQUE (eleitor, filiacaoConcorrente, cargoConcorrente),
  CONSTRAINT UQ_IntencaoVoto1 UNIQUE (eleitor, data),
  CONSTRAINT FK_IntencaoVoto_Concorrente FOREIGN KEY (filiacaoConcorrente, cargoConcorrente) REFERENCES Concorrente(filiacao, idCargo)
);

/*
  Table: Municipal
  O que armazena: O numero identificador de um cargo municipal e o tipo do cargo municipal.
  Os possiveis cargos sao: Vereador e Prefeito
*/ 
CREATE TABLE Municipal (
  cargo INTEGER NOT NULL,
  
  tipo CHAR(8) NOT NULL, /* Contem exatamente 8 caracteres pois as duas palavras armazenadas: Vereador e Prefeito tem o mesmo tamanho */
  
  CONSTRAINT PK_MUNICIPAL PRIMARY KEY (cargo),
  CONSTRAINT FK_MUNICIPAL_CARGO FOREIGN KEY (cargo) REFERENCES Cargo(id) ON DELETE CASCADE,
  CONSTRAINT CHECK_TIPO_MUNICIPAL CHECK(UPPER(tipo) in ('VEREADOR', 'PREFEITO'))
);

/*
  Table: Estadual
  O que armazena: O numero identificador de um cargo estadual e o tipo do cargo estadual.
  Os possiveis cargos sao: Deputado Estadual e Governador
*/ 
CREATE TABLE Estadual (
  cargo INTEGER NOT NULL,
  
  tipo VARCHAR2(17) NOT NULL, /* VARCHAR(17) pois a palavra armazenada de maior tamanho e DEPUTADO ESTADUAL que tem 17 caracteres */
  
  CONSTRAINT PK_ESTADUAL PRIMARY KEY (cargo),
  CONSTRAINT FK_ESTADUAL_CARGO FOREIGN KEY (cargo) REFERENCES Cargo(id) ON DELETE CASCADE,
  CONSTRAINT CHECK_TIPO_ESTADUAL CHECK(UPPER(tipo) in ('DEPUTADO ESTADUAL', 'GOVERNADOR'))
);

/*
  Table: Federal
  O que armazena: O numero identificador de um cargo federal e o tipo do cargo federal.
  Os possiveis cargos sao: Deputado Federal, Senador e Presidente
*/ 
CREATE TABLE Federal (
  cargo INTEGER NOT NULL,
  
  tipo VARCHAR2(16) NOT NULL, /* VARCHAR(16) pois a palavra armazenada de maior tamanho e DEPUTADO FEDERAL que tem 17 caracteres */
  
  CONSTRAINT PK_FEDERAL PRIMARY KEY (cargo),
  CONSTRAINT FK_FEDERAL_CARGO FOREIGN KEY (cargo) REFERENCES Cargo(id) ON DELETE CASCADE,
  CONSTRAINT CHECK_TIPO_FEDERAL CHECK(UPPER(tipo) in ('DEPUTADO FEDERAL', 'SENADOR', 'PRESIDENTE'))
);

/*
  Table: Vereador
  O que armazena: O numero identificador do cargo de vereador, o nome do cargo,
  numero da cadeira do vereador, quantos anos de mandato tem o cargo e o ano da
  ultima eleicao para verador no Brasil
*/ 
CREATE TABLE Vereador (
  cargo       INTEGER NOT NULL,
  
  nome        CHAR(8) NOT NULL,
  numCadeira  INTEGER NOT NULL,
  anosMandato INTEGER NOT NULL,
  anoBase     DATE,
  
  CONSTRAINT PK_VEREADOR PRIMARY KEY (cargo),
  CONSTRAINT SK_VEREADOR UNIQUE (nome, numCadeira),
  CONSTRAINT FK_VEREADOR_MUNICIPAL FOREIGN KEY (cargo) REFERENCES Municipal(cargo) ON DELETE CASCADE 
);

/*
  Table: Prefeito
  O que armazena: O numero identificador do cargo de prefeito, o nome do cargo,
  numero da cadeira do prefeito, quantos anos de mandato tem o cargo e o ano da
  ultima eleicao para prefeito no Brasil
*/ 
CREATE TABLE Prefeito (
  cargo       INTEGER NOT NULL,
  
  nome        CHAR(8) NOT NULL,
  numCadeira  INTEGER NOT NULL,
  anosMandato INTEGER NOT NULL,
  anoBase     DATE,
  vice        CHAR(1) NOT NULL, /* Diz de o cargo em questao e de prefeito 'F' ou vice-prefeito 'T' */
  
  CONSTRAINT PK_PREFEITO PRIMARY KEY (cargo),
  CONSTRAINT SK_PREFEITO UNIQUE (nome, numCadeira),
  CONSTRAINT FK_PREFEITO_MUNICIPAL FOREIGN KEY (cargo) REFERENCES Municipal(cargo) ON DELETE CASCADE,
  CONSTRAINT CHECK_VICE CHECK (UPPER(vice) in ('T', 'F'))
);

/*
  Table: Deputado Estadual
  O que armazena: O numero identificador do cargo de Deputado Estadual, o nome do cargo,
  numero da cadeira do Deputado Estadual, quantos anos de mandato tem o cargo e o ano da
  ultima eleicao para Deputado Estadual no Brasil
*/ 
CREATE TABLE DeputadoEstadual (
  cargo       INTEGER NOT NULL,
  
  nome        CHAR(17) NOT NULL,
  numCadeira  INTEGER NOT NULL,
  anosMandato INTEGER NOT NULL,
  anoBase     DATE,
  
  CONSTRAINT PK_DEPUTADO_ESTADUAL PRIMARY KEY (cargo),
  CONSTRAINT SK_DEPUTADO_ESTADUAL UNIQUE (nome, numCadeira),
  CONSTRAINT FK_DEPUTADO_ESTADUAL_ESTADUAL FOREIGN KEY (cargo) REFERENCES Estadual(cargo) ON DELETE CASCADE 
);

/*
  Table: Governador
  O que armazena: O numero identificador do cargo de Governador, o nome do cargo,
  numero da cadeira do Governador, quantos anos de mandato tem o cargo e o ano da
  ultima eleicao para Governador no Brasil
*/ 
CREATE TABLE Governador (
  cargo       INTEGER NOT NULL,
  
  nome        CHAR(10) NOT NULL,
  numCadeira  INTEGER NOT NULL,
  anosMandato INTEGER NOT NULL,
  anoBase     DATE,
  vice        CHAR(1) NOT NULL, /* Se o cargo for de Governador recebe 'F' se for Vice-Governador recebe 'T' */
  
  CONSTRAINT PK_GOVERNADOR PRIMARY KEY (cargo),
  CONSTRAINT SK_GOVERNADOR UNIQUE (nome, numCadeira),
  CONSTRAINT FK_GOVERNADOR_ESTADUAL FOREIGN KEY (cargo) REFERENCES Estadual(cargo) ON DELETE CASCADE,
    CONSTRAINT CHECK_VICE CHECK (UPPER(vice) in ('T', 'F'))
);

/*
  Table: Deputado Federal
  O que armazena: O numero identificador do cargo de Deputado Federal, o nome do cargo,
  numero da cadeira do Deputado Federal, quantos anos de mandato tem o cargo e o ano da
  ultima eleicao para Deputado Federal no Brasil
*/ 
CREATE TABLE DeputadoFederal (
  cargo       INTEGER NOT NULL,
  
  nome        CHAR(16) NOT NULL,
  numCadeira  INTEGER NOT NULL,
  anosMandato INTEGER NOT NULL,
  anoBase     DATE,
  
  CONSTRAINT PK_DEPUTADO_FEDERAL PRIMARY KEY (cargo),
  CONSTRAINT SK_DEPUTADO_FEDERAL UNIQUE (nome, numCadeira),
  CONSTRAINT FK_DEPUTADO_FEDERAL_FEDERAL FOREIGN KEY (cargo) REFERENCES Federal(cargo) ON DELETE CASCADE 
);

/*
  Table: Senador
  O que armazena: O numero identificador do cargo de Senador, o nome do cargo,
  numero da cadeira do Senador, quantos anos de mandato tem o cargo e o ano da
  ultima eleicao para Senador no Brasil
*/ 
CREATE TABLE Senador (
  cargo       INTEGER NOT NULL,
  
  nome        CHAR(7) NOT NULL,
  numCadeira  INTEGER NOT NULL,
  anosMandato INTEGER NOT NULL,
  anoBase     DATE,
  
  CONSTRAINT PK_SENADOR PRIMARY KEY (cargo),
  CONSTRAINT SK_SENADOR UNIQUE (nome, numCadeira),
  CONSTRAINT FK_SENADOR_FEDERAL FOREIGN KEY (cargo) REFERENCES Federal(cargo) ON DELETE CASCADE 
);

/*
  Table: Presidente
  O que armazena: O numero identificador do cargo de Presidente, o nome do cargo,
  numero da cadeira do Presidente, quantos anos de mandato tem o cargo e o ano da
  ultima eleicao para Presidente no Brasil
*/ 
CREATE TABLE Presidente (
  cargo       INTEGER NOT NULL,
  
  nome        CHAR(10) NOT NULL,
  numCadeira  INTEGER NOT NULL,
  anosMandato INTEGER NOT NULL,
  anoBase     DATE,
  vice        CHAR(1) NOT NULL,  /* Se o cargo for de Presidente recebe 'F' se for Vice-Presidente recebe 'T' */
  
  CONSTRAINT PK_PRESIDENTE PRIMARY KEY (cargo),
  CONSTRAINT SK_PRESIDENTE UNIQUE (nome, numCadeira),
  CONSTRAINT FK_PRESIDENTE_FEDERAL FOREIGN KEY (cargo) REFERENCES Federal(cargo) ON DELETE CASCADE,
  CONSTRAINT CHECK_VICE CHECK (UPPER(vice) in ('T', 'F'))
);
