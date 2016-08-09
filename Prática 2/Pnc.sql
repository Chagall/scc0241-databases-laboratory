/*
  Sequence: ID Voto
  Faz: Sequência que gera os números identificadores (ids) para a tabela Voto
*/
CREATE SEQUENCE idVoto
  START WITH 1
  INCREMENT BY 1
  NOMAXVALUE
  MINVALUE 1
  NOCYCLE
  NOCACHE;

/*
  Table: Voto
  O que armazena: Os votos de eleitores em uma urna, para um determinado candidato
  e em uma determinada data
*/
CREATE TABLE Voto (
  id                    INTEGER NOT NULL,
  
  eleitor               VARCHAR2(20), /* TODO: provavelmente vai ter que modificar */
  urna                  INTEGER,
  filiacaoConcorrente   INTEGER,
  cargoConcorrente      INTEGER,
  data                  DATE,    

  CONSTRAINT PK_VOTO PRIMARY KEY (id),
  CONSTRAINT SK_VOTO UNIQUE (eleitor, urna, filiacaoConcorrente, cargoConcorrente, data),
  CONSTRAINT TK_VOTO UNIQUE (eleitor, data),
  CONSTRAINT FK_VOTO_CONCORRENTE FOREIGN KEY (filiacaoConcorrente,cargoConcorrente) REFERENCES Concorrente(filiacao,idCargo)
);

/*
  Sequence: ID Cargo
  Faz: Sequência que gera os números identificadores (ids) para a tabela Cargo
*/
CREATE SEQUENCE idCargo
  START WITH 1
  INCREMENT BY 1
  NOMAXVALUE
  MINVALUE 1
  NOCYCLE
  NOCACHE;

/*
  Table: Cargo
  O que armazena: O número identificador do cargo e a esfera a qual ele pertence
  As possíveis esferas são: Municipal, Estadual e Federal
*/  
CREATE TABLE Cargo ( 
  id      INTEGER NOT NULL,
  
  esfera  VARCHAR2(9) NOT NULL, /* Contém 9 caracteres pois a maior palavra armazenada é 'Municipal' */       
  
  CONSTRAINT PK_CARGO PRIMARY KEY (id),
  CONSTRAINT CHECK_ESFERA CHECK (UPPER(esfera) in ('MUNICIPAL','ESTADUAL','FEDERAL'))
);

/*
  Table: Municipal
  O que armazena: O número identificador de um cargo municipal e o tipo do cargo municipal.
  Os possíveis cargos são: Vereador e Prefeito
*/ 
CREATE TABLE Municipal (
  cargo INTEGER NOT NULL,
  
  tipo CHAR(8) NOT NULL, /* Contém exatamente 8 caracteres pois as duas palavras armazenadas: Vereador e Prefeito têm o mesmo tamanho */
  
  CONSTRAINT PK_MUNICIPAL PRIMARY KEY (cargo),
  CONSTRAINT FK_MUNICIPAL_CARGO FOREIGN KEY (cargo) REFERENCES Cargo(id),
  CONSTRAINT CHECK_TIPO_MUNICIPAL CHECK(UPPER(tipo) in ('VEREADOR', 'PREFEITO'))
);

/*
  Table: Estadual
  O que armazena: O número identificador de um cargo estadual e o tipo do cargo estadual.
  Os possíveis cargos são: Deputado Estadual e Governador
*/ 
CREATE TABLE Estadual (
  cargo INTEGER NOT NULL,
  
  tipo VARCHAR2(17) NOT NULL, /* VARCHAR(17) pois a palavra armazenada de maior tamanho é DEPUTADO ESTADUAL que tem 17 caracteres */
  
  CONSTRAINT PK_ESTADUAL PRIMARY KEY (cargo),
  CONSTRAINT FK_ESTADUAL_CARGO FOREIGN KEY (cargo) REFERENCES Cargo(id),
  CONSTRAINT CHECK_TIPO_ESTADUAL CHECK(UPPER(tipo) in ('DEPUTADO ESTADUAL', 'GOVERNADOR'))
);

/*
  Table: Federal
  O que armazena: O número identificador de um cargo federal e o tipo do cargo federal.
  Os possíveis cargos são: Deputado Federal, Senador e Presidente
*/ 
CREATE TABLE Federal (
  cargo INTEGER NOT NULL,
  
  tipo VARCHAR2(16) NOT NULL, /* VARCHAR(16) pois a palavra armazenada de maior tamanho é DEPUTADO FEDERAL que tem 17 caracteres */
  
  CONSTRAINT PK_FEDERAL PRIMARY KEY (cargo),
  CONSTRAINT FK_FEDERAL_CARGO FOREIGN KEY (cargo) REFERENCES Cargo(id),
  CONSTRAINT CHECK_TIPO_FEDERAL CHECK(UPPER(tipo) in ('DEPUTADO FEDERAL', 'SENADOR', 'PRESIDENTE'))
);

/*
  Table: Vereador
  O que armazena: O número identificador do cargo de vereador, o nome do cargo,
  número da cadeira do vereador, quantos anos de mandato tem o cargo e o ano da
  ultima eleição para verador no Brasil
*/ 
CREATE TABLE Vereador (
  cargo       INTEGER NOT NULL,
  
  nome        CHAR(8) NOT NULL,
  numCadeira  INTEGER NOT NULL,
  anosMandato INTEGER NOT NULL,
  anoBase     DATE,
  
  CONSTRAINT PK_VEREADOR PRIMARY KEY (cargo),
  CONSTRAINT SK_VEREADOR UNIQUE (nome, numCadeira),
  CONSTRAINT FK_VEREADOR_MUNICIPAL FOREIGN KEY (cargo) REFERENCES Municipal(id)  
);

/*
  Table: Prefeito
  O que armazena: O número identificador do cargo de prefeito, o nome do cargo,
  número da cadeira do prefeito, quantos anos de mandato tem o cargo e o ano da
  ultima eleição para prefeito no Brasil
*/ 
CREATE TABLE Prefeito (
  cargo       INTEGER NOT NULL,
  
  nome        CHAR(8) NOT NULL,
  numCadeira  INTEGER NOT NULL,
  anosMandato INTEGER NOT NULL,
  anoBase     DATE,
  vice        BOOLEAN NOT NULL, /* Diz de o cargo em questão é de prefeito 'FALSE' ou vice-prefeito 'TRUE' */
  
  CONSTRAINT PK_PREFEITO PRIMARY KEY (cargo),
  CONSTRAINT SK_PREFEITO UNIQUE (nome, numCadeira),
  CONSTRAINT FK_PREFEITO_MUNICIPAL FOREIGN KEY (cargo) REFERENCES Municipal(id)  
);

/*
  Table: Deputado Estadual
  O que armazena: O número identificador do cargo de Deputado Estadual, o nome do cargo,
  número da cadeira do Deputado Estadual, quantos anos de mandato tem o cargo e o ano da
  ultima eleição para Deputado Estadual no Brasil
*/ 
CREATE TABLE DeputadoEstadual (
  cargo       INTEGER NOT NULL,
  
  nome        CHAR(17) NOT NULL,
  numCadeira  INTEGER NOT NULL,
  anosMandato INTEGER NOT NULL,
  anoBase     DATE,
  
  CONSTRAINT PK_DEPUTADO_ESTADUAL PRIMARY KEY (cargo),
  CONSTRAINT SK_DEPUTADO_ESTADUAL UNIQUE (nome, numCadeira),
  CONSTRAINT FK_DEPUTADO_ESTADUAL_ESTADUAL FOREIGN KEY (cargo) REFERENCES Estadual(id)  
);

/*
  Table: Governador
  O que armazena: O número identificador do cargo de Governador, o nome do cargo,
  número da cadeira do Governador, quantos anos de mandato tem o cargo e o ano da
  ultima eleição para Governador no Brasil
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
  CONSTRAINT FK_GOVERNADOR_ESTADUAL FOREIGN KEY (cargo) REFERENCES Estadual(id)  
);

/*
  Table: Deputado Federal
  O que armazena: O número identificador do cargo de Deputado Federal, o nome do cargo,
  número da cadeira do Deputado Federal, quantos anos de mandato tem o cargo e o ano da
  ultima eleição para Deputado Federal no Brasil
*/ 
CREATE TABLE DeputadoFederal (
  cargo       INTEGER NOT NULL,
  
  nome        CHAR(16) NOT NULL,
  numCadeira  INTEGER NOT NULL,
  anosMandato INTEGER NOT NULL,
  anoBase     DATE,
  
  CONSTRAINT PK_DEPUTADO_FEDERAL PRIMARY KEY (cargo),
  CONSTRAINT SK_DEPUTADO_FEDERAL UNIQUE (nome, numCadeira),
  CONSTRAINT FK_DEPUTADO_FEDERAL_FEDERAL FOREIGN KEY (cargo) REFERENCES Federal(id)  
);

/*
  Table: Senador
  O que armazena: O número identificador do cargo de Senador, o nome do cargo,
  número da cadeira do Senador, quantos anos de mandato tem o cargo e o ano da
  ultima eleição para Senador no Brasil
*/ 
CREATE TABLE Senador (
  cargo       INTEGER NOT NULL,
  
  nome        CHAR(7) NOT NULL,
  numCadeira  INTEGER NOT NULL,
  anosMandato INTEGER NOT NULL,
  anoBase     DATE,
  
  CONSTRAINT PK_SENADOR PRIMARY KEY (cargo),
  CONSTRAINT SK_SENADOR UNIQUE (nome, numCadeira),
  CONSTRAINT FK_SENADOR_FEDERAL FOREIGN KEY (cargo) REFERENCES Federal(id)  
);

/*
  Table: Presidente
  O que armazena: O número identificador do cargo de Presidente, o nome do cargo,
  número da cadeira do Presidente, quantos anos de mandato tem o cargo e o ano da
  ultima eleição para Presidente no Brasil
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
  CONSTRAINT FK_PRESIDENTE_FEDERAL FOREIGN KEY (cargo) REFERENCES Federal(id)  
);
