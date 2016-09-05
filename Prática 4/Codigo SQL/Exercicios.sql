/*
	Ex. 1
		- i) e ii) Não precisa de código nem explicação
		É só abrir conexões no SQLDeveloper
*/

/*
	Ex. 1
		- iii) Na SESSÃO 2, inicie uma transação com um dos níveis de isolamento (SERIALIZABLE)
*/

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;		/* Primeria execucao */
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;		/* Segunda execucao */

/*
	Ex. 1
		- iv) Na SESSÃO 2, faça uma consulta que retorne, para cada Candidato político, todos os
			   dados de cada uma de suas candidaturas. Use o operador de junção JOIN.
*/

SELECT * FROM CANDIDATURA Cnd JOIN CANDIDATO Cdto ON Cnd.NroCand=Cdto.NroCand ORDER BY Cnd.NroCand;

/*
	Ex. 1
		- v) Na SESSÃO 1, execute um comando DML que afete a resposta da consulta do item iv;
		Res: 9 linhas atualizado.
*/

UPDATE CANDIDATURA SET NroVice=10 WHERE NroCand = -1; /* Serializable */
UPDATE CANDIDATURA SET NroVice=12 WHERE NroCand = -1; /* Read Committed */

/* 
	Ex. 1
		- vi) Repita o passo iv – o que aconteceu e por que?
		
		Res SERIALIZABLE: A alteração feita no item V não foi visualizada pela transação.
		Os campos NroVice para o candidato -1 deveriam conter o valor 10, porém estão como (null)
		
		Res READ COMMITTED: A alteração feita no item V não foi visualizada pela transação.
		Os campos NroVice para o candidato -1 deveriam conter o valor 12, porém estão como 10
*/

SELECT DISTINCT * FROM CANDIDATURA Cnd JOIN CANDIDATO Cdto ON Cnd.NroCand=Cdto.NroCand ORDER BY Cnd.NroCand;

/*
	Ex. 1
		- vii) Na SESSÃO 1, execute commit para efetivar a transação;
		Executado
*/

/*
	Ex. 1
		- viii) Repita o passo iv – o que aconteceu e por que?
		Res SERIALIZABLE: A alteração feita no item V, mesmo após o commit, não foi visualizada pela transação.
		Os campos NroVice para o candidato -1 deveriam conter o valor 10, porém estão como (null)
		
		Res READ COMMITTED: Após o commit na SESSÂO 1, a alteração feita no item V foi visualizada.
		Os campos NroVice para o candidato -1 agora aparecem com o valor 12
*/

SELECT DISTINCT Cnd.Reg, Cnd.CodCargo, Cnd.Ano, Cnd.NroVice FROM CANDIDATURA Cnd JOIN CANDIDATO Cdto ON Cnd.NroCand=Cdto.NroCand ORDER BY Cnd.NroCand;

/*
	Ex. 1
		- ix) Na SESSÃO 2, execute commit para efetivar a transação;
		Executado
*/

/*
	Ex. 1
		- x) Repita o passo iv – o que aconteceu e por que?
		Res Ambos: Após o commit na SESSÂO 2 as alterações feitas no item V foram visualizadas.
		Os campos NroVice para o candidato -1 agora aparecem com o valor 10 no SERIALIZABLE e 12 no READ COMMITED
*/

/*
  Ex. 2
  a)  Crie um relatório (visão) com todos os candidatos que se candidataram mais do que uma vez a qualquer cargo. 
      Crie uma visão que exiba estes dados incluindo nome, CPF e apelido, além do número de candidaturas.
*/
CREATE VIEW MaisDeUmaCandidatura (Nome, CPF, Apelido, NroCandidaturas)
AS
(SELECT Cand.Nome, Cand.CPF, Cand.Apelido, NroCandidaturas FROM Candidato Cand 
JOIN 
(SELECT NroCand AS Candidato , NroCandidaturas FROM (SELECT Candt.NroCand, COUNT(Candt.Ano) AS NroCandidaturas FROM CANDIDATURA Candt GROUP BY Candt.NroCand) WHERE NroCandidaturas > 1) 
ON 
Cand.NroCand=Candidato);

/*
  Ex.2
  b)  Crie uma visão que exiba, para cada candidatura, os atributos do candidato e do cargo.
      Escolha os atributos que julgar mais adequados.
      Atributos escolhidos: 
      Para o Candidato: CPF, Nome, Idade e Apelido do Candidato
      Para o Cargo: Nome, Esfera, Cidade e Estado
      
      Esta visão é atualizável? Por quê?
      Não. De acordo com a teoria lida no Slide, a junção de ambas as tabelas, com os atributos que escolhemos,
      fez com que esta junção não fosse key-preserved. As chaves primárias de ambas tabelas que fazem parte
      da View não estão contidas na View.
      Caso tentemos dar update em atributos que vieram tanto da tabela Candidato, quanto da tabela Cargo obetmos 
      os seguintes erros.
*/

CREATE VIEW DadosCandidatura (CPF, Nome, Idade, Apelido, Cargo, Esfera, Cidade, Estado) 
AS(
SELECT Cand.CPF, Cand.Nome, Cand.Idade, Cand.Apelido, Crg.NomeDescritivo, Crg.Esfera, Crg.NomeCidade, Crg.SiglaEstado
FROM CANDIDATO Cand, CARGO Crg, CANDIDATURA Cdt WHERE Cand.Nome NOT IN ('Branco', 'Nulo') AND Cand.NroCand=Cdt.NroCand AND Cdt.CodCargo=Crg.CodCargo
);

UPDATE DadosCandidatura SET Apelido = 'Zeh' WHERE CPF = 1;
UPDATE DadosCandidatura SET Cargo = 'Presidents' WHERE Cargo = 'Presidente';

/*
  Ex. 3
    Considere uma visão materializada com os dados das sessões eleitorais e todos seus dados correlatos, 
    incluindo zona, urna, bairro, cidade, estado, e correspondentes atributos.
    Crie esta visão com a opção refresh fast.
*/
CREATE MATERIALIZED VIEW LOG ON LE06SESSAO WITH ROWID;
CREATE MATERIALIZED VIEW LOG ON LE04BAIRRO WITH ROWID;
CREATE MATERIALIZED VIEW DadosSessoes
REFRESH FAST AS
SELECT S.ROWID "Sessao_rid", B.ROWID "Bairro_rid",
S.NroSessao, S.NroZona, S.NSerial as Urna, B.Nome, B.NomeCidade, B.SiglaEstado, B.CEP FROM SESSAO S, BAIRRO B WHERE S.NroZona=B.NroZona;

DROP MATERIALIZED VIEW DadosSessoes;
DROP MATERIALIZED VIEW LOG ON LE06SESSAO;
DROP MATERIALIZED VIEW LOG ON LE04BAIRRO;
