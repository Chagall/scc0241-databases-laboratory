/* ----- Sequencias Utilizadas pelas Tabelas ----- */

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
  
/* ----- Tabelas ----- */  

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
  CONSTRAINT FK_VEREADOR_MUNICIPAL FOREIGN KEY (cargo) REFERENCES Municipal(id) ON DELETE CASCADE 
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
  vice        BOOLEAN NOT NULL, /* Diz de o cargo em questao e de prefeito 'FALSE' ou vice-prefeito 'TRUE' */
  
  CONSTRAINT PK_PREFEITO PRIMARY KEY (cargo),
  CONSTRAINT SK_PREFEITO UNIQUE (nome, numCadeira),
  CONSTRAINT FK_PREFEITO_MUNICIPAL FOREIGN KEY (cargo) REFERENCES Municipal(id) ON DELETE CASCADE
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
  CONSTRAINT FK_DEPUTADO_ESTADUAL_ESTADUAL FOREIGN KEY (cargo) REFERENCES Estadual(id) ON DELETE CASCADE 
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
  vice        BOOLEAN NOT NULL, /* Se o cargo for de Governador recebe 'false' se for Vice-Governador recebe 'true' */
  
  CONSTRAINT PK_GOVERNADOR PRIMARY KEY (cargo),
  CONSTRAINT SK_GOVERNADOR UNIQUE (nome, numCadeira),
  CONSTRAINT FK_GOVERNADOR_ESTADUAL FOREIGN KEY (cargo) REFERENCES Estadual(id) ON DELETE CASCADE 
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
  CONSTRAINT FK_DEPUTADO_FEDERAL_FEDERAL FOREIGN KEY (cargo) REFERENCES Federal(id) ON DELETE CASCADE 
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
  CONSTRAINT FK_SENADOR_FEDERAL FOREIGN KEY (cargo) REFERENCES Federal(id) ON DELETE CASCADE 
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
  vice        BOOLEAN NOT NULL,  /* Se o cargo for de Presidente recebe 'false' se for Vice-Presidente recebe 'true' */
  
  CONSTRAINT PK_PRESIDENTE PRIMARY KEY (cargo),
  CONSTRAINT SK_PRESIDENTE UNIQUE (nome, numCadeira),
  CONSTRAINT FK_PRESIDENTE_FEDERAL FOREIGN KEY (cargo) REFERENCES Federal(id) ON DELETE CASCADE 
);
