/* 
  Ex. 1 - Insercao dos valores aleatorios 
  O que o comando abaixo faz:
  - Update no campo Total de todas as tuplas da tabela LE11 gerando um numero
    aleatorio de 6 digitos para Total, entre 100000 e 999999 votos
*/
UPDATE PLEITO SET Total=dbms_random.value(100000,999999);

/*
  Ex. 2
  a) Permissoees garantidas a: 
     Os usuários escolhidos para realizar o exercício 2 são: a9066470, l8937308
*/

/*
  Ex. 2
  b) Permissoes Garantidas:
    - Inserir somente em duas das colunas de uma de suas tabelas.
    - Consultar duas de suas tabelas.
*/

GRANT INSERT (NroZona, NroDeUrnasReservas) ON ZONA TO a9066470 WITH GRANT OPTION;
GRANT SELECT ON CANDIDATURA TO a9066470 WITH GRANT OPTION;
GRANT SELECT ON PLEITO TO a9066470 WITH GRANT OPTION;

/* 
  Ex.2
  c) Peça ao usuario a9066470 para testar as permissões.
*/

INSERT INTO a7987435.ZONA (NroZona, NroDeUrnasReservas) VALUES (41, 4);
INSERT INTO a7987435.ZONA (NroZona, NroDeUrnasReservas) VALUES (42, 3);
SELECT Reg FROM a7987435.CANDIDATURA ORDER BY Reg DESC;
SELECT NroCand FROM a7987435.PLEITO ORDER BY NroCand;

/*
  Ex. 2
  d) peça ao usuario a9066470 que atribua ao usuário l8937308 as permissões 
  recebidas no item b) sem WITH GRANT OPTION.
*/

GRANT INSERT (NroZona, NroDeUrnasReservas) ON a7987435.ZONA TO l8937308;
GRANT SELECT ON a7987435.CANDIDATURA TO l8937308;
GRANT SELECT ON a7987435.PLEITO TO l8937308;

/*
  Ex. 2
  e) Peça ao usuario l8937308 para testar as permissões.
*/

INSERT INTO a7987435.ZONA (NroZona, NroDeUrnasReservas) VALUES (43, 4);
INSERT INTO a7987435.ZONA (NroZona, NroDeUrnasReservas) VALUES (44, 3);
SELECT Reg FROM a7987435.CANDIDATURA ORDER BY Reg ASC;
SELECT NroCand FROM a7987435.PLEITO ORDER BY NroCand DESC;

/*
  Ex. 2
  f) revogue do usuario a9066470 as permissões atribuídas no item b)
*/

REVOKE INSERT ON ZONA FROM a9066470;
REVOKE SELECT ON CANDIDATURA FROM a9066470;
REVOKE SELECT ON PLEITO FROM a9066470;

/*
  Ex. 2
  g) peça a a9066470 e l8937308 que refaçam os testes das permissões.
    Explique o que aconteceu.
*/

/* a9066470 */
INSERT INTO a7987435.ZONA (NroZona, NroDeUrnasReservas) VALUES (50, 4);
SELECT Reg FROM a7987435.CANDIDATURA ORDER BY Reg DESC;
SELECT NroCand FROM a7987435.PLEITO ORDER BY NroCand DESC;
/* l8937308 */
INSERT INTO a7987435.ZONA (NroZona, NroDeUrnasReservas) VALUES (51, 3);
SELECT Reg FROM a7987435.CANDIDATURA ORDER BY Reg ASC;
SELECT NroCand FROM a7987435.PLEITO ORDER BY NroCand DESC;

/* 
  Ex. 3
  a) Calcule o numero total de cadeiras por esfera
  O que o comando abaixo faz: 
  - Seleciona as colunas Esfera e conta a quantidade de cargos existentes
  por esfera, colocando um alias 'numCadeiras' e agrupa o resultado pelas
  esferas existentes
*/
  SELECT Esfera, COUNT(CodCargo) AS numCadeiras FROM CARGO GROUP BY Esfera;

/* Pode-se calcular o numero total de cadeiras para cada esfera, uma a uma */
SELECT Esfera, COUNT(CodCargo) AS numCadeiras FROM CARGO WHERE ESFERA='M' GROUP BY Esfera;
SELECT Esfera, COUNT(CodCargo) AS numCadeiras FROM CARGO WHERE ESFERA='E' GROUP BY Esfera;
SELECT Esfera, COUNT(CodCargo) AS numCadeiras FROM CARGO WHERE ESFERA='F' GROUP BY Esfera;

/*
  Ex. 4
  a)  Selecionar todos os dados dos candidatos que alguma vez já se candidataram a cargo que possui vice
      Versão 1: apenas usando junção
*/

SELECT DISTINCT Cdto.NroCand, Cdto.Tipo, Cdto.CPF, Cdto.Nome, Cdto.Idade, Cdto.Apelido, Cdto.SiglaPartido FROM CANDIDATO Cdto JOIN CANDIDATURA Cnd ON Cdto.NroCand=Cnd.NroCand JOIN CARGO Crg ON Crg.CodCargo=Cnd.CodCARGO AND Crg.PossuiVice=1 ORDER BY Cdto.NroCand;

/*
  Ex. 4
  b)  Selecionar todos os dados dos candidatos que alguma vez já se candidataram a cargo que possui vice
      Versão 2: com consultas aninhadas correlacionadas (EXISTS)
*/

SELECT DISTINCT Cdto.NroCand, Cdto.Tipo, Cdto.CPF, Cdto.Nome, Cdto.Idade, Cdto.Apelido, Cdto.SiglaPartido FROM CANDIDATO Cdto WHERE 
EXISTS (SELECT NULL FROM CANDIDATURA Cnd, CARGO Crg WHERE Cnd.NroCand = Cdto.NroCand AND Crg.CodCargo=Cnd.CodCargo AND Crg.PossuiVice=1);

/*
  Ex. 4
  c)  Selecionar todos os dados dos candidatos que alguma vez já se candidataram a cargo que possui vice
      Versão 3: com consultas aninhadas não correlacionadas (IN)
*/

SELECT * FROM CANDIDATO Cdto WHERE Cdto.NroCand IN (SELECT NroCand FROM CANDIDATURA Cnd WHERE Cnd.CodCargo IN (SELECT CodCargo FROM Cargo Crg WHERE Crg.PossuiVice=1)) ORDER BY Cdto.NroCand;



