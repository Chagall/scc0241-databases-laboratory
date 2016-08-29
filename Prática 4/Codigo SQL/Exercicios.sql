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
		- 2. Visões não materializadas
		a) (1.5) Crie um relatório (visão) com todos os candidatos que se candidataram mais do que uma
		vez a qualquer cargo. Crie uma visão que exiba estes dados incluindo nome, CPF e apelido, além do
		número de candidaturas.
		 Insira dados para que seu relatório tenha, pelo menos, duas tuplas
*/

CREATE VIEW CANDIDATO_EXPERIENTE (nome, CPF, apelido, numCandidaturas) 
AS 
SELECT Cdto.Nome, Cdto.CPF, Cdto.Apelido FROM CANDIDATO Cdto JOIN CANDIDATURA Cnd ON Cdto.NroCand=Cnd.NroCand AND COUNT(Cnd.NroCand) > 1 GROUP BY Cdto.NroCand;


SELECT Cdto.Nome, Cdto.CPF, Cdto.Apelido FROM CANDIDATO Cdto, CANDIDATURA Cnd WHERE Cdto.NroCand=Cnd.NroCand AND;

SELECT Cdto.Nome, Cdto.CPF, Cdto.Apelido FROM CANDIDATO Cdto WHERE Cdto.NroCand In ;

SELECT COUNT(Cnd.Ano) AS contagem, Cnd.NroCand FROM CANDIDATURA Cnd WHERE Cnd.contagem>=2 GROUP BY Cnd.NroCand ORDER BY Cnd.NroCand;