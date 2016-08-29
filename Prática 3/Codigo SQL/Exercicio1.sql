/* 
  Ex. 1 - Insercao dos valores aleatorios 
  O que o comando abaixo faz:
  - Update no campo Total de todas as tuplas da tabela LE11 gerando um numero
    aleatorio de 6 digitos para Total, entre 100000 e 999999 votos
*/
UPDATE LE11 SET Total=dbms_random.value(100000,999999);

/*
  Ex. 2
  a) Permiss�es garantidas a:
    USER1: a9066470
    USER2: a
  
  b) Permissoes Garantidas:
    - Inserir somente em duas das colunas de uma de suas tabelas.
    - Consultar duas de suas tabelas.
*/

GRANT INSERT (NroZona, NroDeUrnasReservas) ON LE03 TO a9066470;
GRANT SELECT ON LE10 TO a9066470;
GRANT SELECT ON LE11 TO a9066470;

REVOKE INSERT ON LE03 FROM a9066470;
REVOKE SELECT ON LE10 FROM a9066470;
REVOKE SELECT ON LE11 FROM a9066470;

/*
Comandos teste com os erros quando o privil�gio foi retirado
INSERT INTO a7987435.LE03 (NroZona, NroDeUrnasReservas) VALUES (39, 4);

Erro a partir da linha : 1 no comando -
INSERT INTO a7987435.LE03 (NroZona, NroDeUrnasReservas) VALUES (39, 4)
Erro na Linha de Comandos : 1 Coluna : 22
Relat�rio de erros -
Erro de SQL: ORA-00942: a tabela ou view n�o existe
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

INSERT INTO a7987435.LE03 (NroZona, NroDeUrnasReservas) VALUES (40, 5);

Erro a partir da linha : 2 no comando -
INSERT INTO a7987435.LE03 (NroZona, NroDeUrnasReservas) VALUES (40, 5)
Erro na Linha de Comandos : 2 Coluna : 22
Relat�rio de erros -
Erro de SQL: ORA-00942: a tabela ou view n�o existe
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

SELECT Reg FROM a7987435.LE10 ORDER BY Reg DESC;

ORA-00942: a tabela ou view n�o existe
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:
Erro na linha: 4 Coluna: 26

SELECT NroCand FROM a7987435.LE11 ORDER BY NroCand;

ORA-00942: a tabela ou view n�o existe
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:
Erro na linha: 5 Coluna: 30
*/

/* 
  Ex. 3
  a) Calcule o n�mero total de cadeiras por esfera
  O que o comando abaixo faz: 
  - Seleciona as colunas Esfera e conta a quantidade de cargos existentes
  por esfera, colocando um alias 'numCadeiras' e agrupa o resultado pelas
  esferas existentes
*/
SELECT Esfera, COUNT(CodCargo) AS numCadeiras FROM CARGO GROUP BY Esfera;

/* Pode-se calcular o n�mero total de cadeiras para cada esfera, uma a uma */
SELECT Esfera, COUNT(CodCargo) AS numCadeiras FROM CARGO WHERE ESFERA='M' GROUP BY Esfera;
SELECT Esfera, COUNT(CodCargo) AS numCadeiras FROM CARGO WHERE ESFERA='E' GROUP BY Esfera;
SELECT Esfera, COUNT(CodCargo) AS numCadeiras FROM CARGO WHERE ESFERA='F' GROUP BY Esfera;

/*
  Ex. 3
  b)  Liste os dados das sess�es (NroSessao, NroZona, NSerial) cujas cidades possuem mais que 100.000 habitantes
  O que o comando abaixo faz:
  - 
*/

/*
  Ex. 3
  c)  Liste os partidos (nome e sigla) que tiveram candidatos a cargos de esfera estadual;
  O que o comando abaixo faz:
  - 
*/
SELECT Sigla FROM PARTIDO ()

SELECT Cnt.NroCandid FROM CANDIDATURA.Cnt JOIN CANDIDATO.Cnd ON Cnd.NroCandid=Cnd.NroCand WHERE CANDIDATURA.;

SELECT Cnd.NroCand FROM CANDIDATURA Cnd JOIN CARGO Crg ON Cnd.CodCargo=Crg.CodCargo;

/* Comeca for aqui e vai fazendo os joins aninhados */
SELECT CodCargo FROM CARGO WHERE Esfera='E';





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

SELECT ;

/*
  Ex. 4
  c)  Selecionar todos os dados dos candidatos que alguma vez já se candidataram a cargo que possui vice
      Versão 3: com consultas aninhadas não correlacionadas (IN)
*/

SELECT * FROM CANDIDATO Cdto WHERE Cdto.NroCand IN (SELECT NroCand FROM CANDIDATURA Cnd WHERE Cnd.CodCargo IN (SELECT CodCargo FROM Cargo Crg WHERE Crg.PossuiVice=1)) ORDER BY Cdto.NroCand;



