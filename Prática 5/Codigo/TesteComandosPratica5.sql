/* Retorna todas as tabelas e visoes que cosntituem o dicionario */
SELECT * FROM DICT;

/* Retorna todas as tabelas pertencentes ao usuario que fez a consulta */
SELECT * FROM TAB WHERE TNAME NOT LIKE 'BIN%' AND TNAME NOT LIKE 'MLOG%' ORDER BY TNAME;
SELECT * FROM TAB ORDER BY TNAME;

/* Retorna todas as colunas das tabelas pertencentes ao usuario que fez a consulta */
SELECT * FROM COL WHERE TNAME NOT LIKE 'BIN%' AND TNAME NOT LIKE 'MLOG%' ORDER BY TNAME;

/* Retorna todos os objetos pertencentes ao usuario que fez a consulta
   Pelo que entendi objetos podem ser: 
    - SYNONYM (Alias)
    - INDEX
    - MLOG de Tabelas
    - VIEW
    - MATERIALIZED VIEW
*/
SELECT * FROM OBJ;

/* Retorna todos os priviolegios que o usuario que fez a consulta deu a outros
   usuarios
*/
SELECT * FROM USER_TAB_PRIVS;

/* Fazendo comentario na tabela de Zonas ELeitorais e verificando que funcionou */
COMMENT ON TABLE LE03ZONA IS 'Zonas Eleitorais';
SELECT * FROM USER_TAB_COMMENTS WHERE COMMENTS IS NOT NULL;

/* Selecionando todos os Synonyms criados pelo usuario e ordenando pelo ID 
   do synonym 
*/
SELECT * FROM USER_OBJECTS WHERE OBJECT_TYPE='SYNONYM' ORDER BY OBJECT_ID;