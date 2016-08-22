/* a */
ALTER TABLE Cidade
ADD isCapital CHAR(1) DEFAULT 'f' NOT NULL
CONSTRAINT CK_Cidade CHECK (UPPER(isCapital) in ('T', 'F'));

/* Resposta:
  Os valores das tuplas adicionadas anteriormente recebem nessa coluna o valor
default, isso se deve ao "NOT NULL". Caso o NOT NULL fosse omitido, todos as
tuplas previamente adicionadas não sofreriam alteração alguma.

/* b */
ALTER TABLE PartidoPolitico
ADD CONSTRAINT UQ_PartidoPolitico UNIQUE(nome);

/* c */
ALTER TABLE SessaoEleitoral DROP COLUMN numero;
ALTER TABLE SessaoEleitoral DROP COLUMN numero CASCADE CONSTRAINTS;

/* Resposta:
  ALTER TABLE SessaoEleitoral DROP COLUMN numero
  Relatório de erros -
  Erro de SQL: ORA-12991: a coluna é indicada em uma restrição de várias colunas
  12991. 00000 -  "column is referenced in a multi-column constraint"
  *Cause:    An attempt was made to drop a column referenced by some
            constraints.
  *Action:   Drop all constraints referencing the dropped column or
             specify CASCADE CONSTRAINTS in statement.
             
  Table SESSAOELEITORAL alterado.

  Sem cascade a saída é um erro de impossibilidade de realizar a ação. Com 
CASCADE CONSTRAINTS a coluna na tabela em que havia a PK é removida em todas as
tuplas já existentes, já na tabela em que havia a FK os valores da coluna con-
tinuam lá, mas a CONSTRAINT FOREIGN KEY de referência é removida.*/

/* d */
ALTER TABLE Cargo
DISABLE CONSTRAINT CHECK_ESFERA;

INSERT INTO Cargo VALUES(idCargo.NextVal, 'MUNDIAL');

ALTER TABLE Cargo
ENABLE CONSTRAINT CHECK_ESFERA;

/*
Table CARGO alterado.

1 linha inserido.

ALTER TABLE Cargo
ENABLE CONSTRAINT CHECK_ESFERA
Relatório de erros -
Erro de SQL: ORA-02293: não é possível validar (A9066470.CHECK_ESFERA) - restrição de verificação violada
02293. 00000 - "cannot validate (%s.%s) - check constraint violated"
*Cause:    an alter table operation tried to validate a check constraint to
           populated table that had nocomplying values.
*Action:   Obvious

A ativação do check não funciona pois a tabela já possui uma tupla com valores
conflitantes com o check.
*/