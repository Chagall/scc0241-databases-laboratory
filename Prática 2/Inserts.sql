/* Insert das Cidades */
INSERT INTO Cidade (nome, estado) VALUES ('Rio Branco','AC');
INSERT INTO Cidade (nome, estado) VALUES ('Maceió', 'AL');
INSERT INTO Cidade (nome, estado) VALUES ('Macapá', 'AP');
INSERT INTO Cidade (nome, estado) VALUES ('Manaus', 'AM');
INSERT INTO Cidade (nome, estado) VALUES ('Salvador', 'BA');
INSERT INTO Cidade (nome, estado) VALUES ('Fortaleza', 'CE');
INSERT INTO Cidade (nome, estado) VALUES ('Brasília', 'DF');
INSERT INTO Cidade (nome, estado) VALUES ('Vitória', 'ES'	);
INSERT INTO Cidade (nome, estado) VALUES ('Goiânia', 'GO'	);
INSERT INTO Cidade (nome, estado) VALUES ('São Luiz', 'MA');
INSERT INTO Cidade (nome, estado) VALUES ('Cuiabá', 'MT');
INSERT INTO Cidade (nome, estado) VALUES ('Campo Grande', 'MS');
INSERT INTO Cidade (nome, estado) VALUES ('Belo Horizonte', 'MG');
INSERT INTO Cidade (nome, estado) VALUES ('Belém', 'PA');
INSERT INTO Cidade (nome, estado) VALUES ('João Pessoa', 'PB');
INSERT INTO Cidade (nome, estado) VALUES ('Curitiba', 'PR');
INSERT INTO Cidade (nome, estado) VALUES ('Recife', 'PE');
INSERT INTO Cidade (nome, estado) VALUES ('Terezina', 'PI');
INSERT INTO Cidade (nome, estado) VALUES ('Rio de Janeiro', 'RJ'	);
INSERT INTO Cidade (nome, estado) VALUES ('Natal', 'RN');
INSERT INTO Cidade (nome, estado) VALUES ('Porto Alegre', 'RS');
INSERT INTO Cidade (nome, estado) VALUES ('Porto Velho', 'RO');
INSERT INTO Cidade (nome, estado) VALUES ('Boa Vista', 'RR');
INSERT INTO Cidade (nome, estado) VALUES ('Florianópolis', 'SC');
INSERT INTO Cidade (nome, estado) VALUES ('São Paulo', 'SP');
INSERT INTO Cidade (nome, estado) VALUES ('Aracajú', 'SE');
INSERT INTO Cidade (nome, estado) VALUES ('Palmas', 'TO');
INSERT INTO Cidade (nome, estado) VALUES ('São Carlos', 'SP');

/* Insert dos Bairros */
INSERT INTO Bairro (nome, cidade, estado) VALUES('Jardim Lutfalla', 'São Carlos', 'SP');
INSERT INTO Bairro (nome, cidade, estado) VALUES('Botafogo', 'São Carlos', 'SP');
INSERT INTO Bairro (nome, cidade, estado) VALUES('Centro', 'São Carlos', 'SP');

/* Insert das Zonas Eleitoras */
INSERT INTO ZonaEleitoral (numero, tamanho) VALUES (numeroZonaEleitoral.NextVal, '200000');
INSERT INTO ZonaEleitoral (numero, tamanho) VALUES (numeroZonaEleitoral.NextVal, '313000');
INSERT INTO ZonaEleitoral (numero, tamanho) VALUES (numeroZonaEleitoral.NextVal, '15000');
INSERT INTO ZonaEleitoral (numero, tamanho) VALUES (numeroZonaEleitoral.NextVal, '27000');
INSERT INTO ZonaEleitoral (numero, tamanho) VALUES (numeroZonaEleitoral.NextVal, '123000');
INSERT INTO ZonaEleitoral (numero, tamanho) VALUES (numeroZonaEleitoral.NextVal, '54000');

/* Insert das Sessoes Eleitorais */
INSERT INTO SessaoEleitoral (id, numero, zona, bairro, cidade, estado) VALUES (idSessaoEleitoral.NextVal, 412, 2, 'Jardim Lutfalla', 'São Carlos', 'SP');
INSERT INTO SessaoEleitoral (id, numero, zona, bairro, cidade, estado) VALUES (idSessaoEleitoral.NextVal, 413, 2, 'Botafogo', 'São Carlos', 'SP');
INSERT INTO SessaoEleitoral (id, numero, zona, bairro, cidade, estado) VALUES (idSessaoEleitoral.NextVal, 414, 2, 'Centro', 'São Carlos', 'SP');

/* Insert das Urnas */
INSERT INTO Urna (codigo, fabricante, numRegistro, zona, sessao) VALUES (codigoUrna.NextVal, 'Intel', 54214, 2, 2);
INSERT INTO Urna (codigo, fabricante, numRegistro, zona, sessao) VALUES (codigoUrna.NextVal, 'AMD', 54214, 2, 3);
INSERT INTO Urna (codigo, fabricante, numRegistro, zona, sessao) VALUES (codigoUrna.NextVal, 'Apple', 54214, 2, 4);

/* Insert dos Eleitores */
INSERT INTO Eleitor (CPF, RG, tituloEleitoral, nome) VALUES ('02526673100', '5021131', '12345', 'Fabio Alves Martins Pereira');
INSERT INTO Eleitor (CPF, RG, tituloEleitoral, nome) VALUES ('42230739824', '2087611', '12356', 'Matheus Cabral Manoel');
INSERT INTO Eleitor (CPF, RG, tituloEleitoral, nome) VALUES ('23145678965', '1437898', '67531', 'Lucio Mauro Costa');

/* Insert dos Votos Brancos ou Nulos */
INSERT INTO VotoBrancoNulo (eleitor, urna, data, isBranco, isNulo) VALUES ('02526673100', 2, TO_DATE('2015/05/15 8:30:25', 'YYYY/MM/DD HH:MI:SS'), 'T', 'F');
INSERT INTO VotoBrancoNulo (eleitor, urna, data, isBranco, isNulo) VALUES ('42230739824', 2, TO_DATE('2015/05/15 8:31:25', 'YYYY/MM/DD HH:MI:SS'), 'F', 'T');
INSERT INTO VotoBrancoNulo (eleitor, urna, data, isBranco, isNulo) VALUES ('23145678965', 2, TO_DATE('2015/05/15 8:32:25', 'YYYY/MM/DD HH:MI:SS'), 'T', 'F');

/* Insert dos Candidatos */
INSERT INTO Candidato (CPF, RG, nome, sexo, dataNascimento, naturalidade, endereco) VALUES ('34212356744', '456342', 'Naldo Santos Camargo', 'M', TO_DATE('1967/05/15', 'YYYY/MM/DD'), 'Rio de Janeiro', 'Rua das Pedras, numero 812, São Roque, SP');
INSERT INTO Candidato (CPF, RG, nome, sexo, dataNascimento, naturalidade, endereco) VALUES ('34235454321', '654665', 'Maria das Graças', 'f', TO_DATE('1982/03/2', 'YYYY/MM/DD'), 'Araxá', 'Rua Forte Silva, numero 112, apt. 142, Belo Horizonte, MG');
INSERT INTO Candidato (CPF, RG, nome, sexo, dataNascimento, naturalidade, endereco) VALUES ('12347980976', '889762', 'Henrique Toledo Vidal', 'M', TO_DATE('1978/11/23', 'YYYY/MM/DD'), 'Poços de Caldas', 'Rua Barão do Rio Branco, numero 112, Anápolis, GO');
INSERT INTO Candidato (CPF, RG, nome, sexo, dataNascimento, naturalidade, endereco) VALUES ('54352645432', '435563', 'Jonas Silva', 'M', TO_DATE('1965/01/23', 'YYYY/MM/DD'), 'Goiania', 'Rua 123, numero 15, Goiania, GO');
INSERT INTO Candidato (CPF, RG, nome, sexo, dataNascimento, naturalidade, endereco) VALUES ('67567756446', '544433', 'Marcio Dutra', 'M', TO_DATE('1991/09/23', 'YYYY/MM/DD'), 'Salvador', 'Rua dos Morros, numero 23, Salvador, BA');
INSERT INTO Candidato (CPF, RG, nome, sexo, dataNascimento, naturalidade, endereco) VALUES ('86564354434', '876675', 'Marcelo Cardoso', 'M', TO_DATE('1982/01/12', 'YYYY/MM/DD'), 'Salvador', 'Rua da Gavea, numero 11, Salvador, BA');
INSERT INTO Candidato (CPF, RG, nome, sexo, dataNascimento, naturalidade, endereco) VALUES ('13435656756', '098765', 'Saulo da Silva', 'M', TO_DATE('1978/11/14', 'YYYY/MM/DD'), 'Poços de Caldas', 'Travessa Janes John, numero 54, apt. 12, Anápolis, GO');
INSERT INTO Candidato (CPF, RG, nome, sexo, dataNascimento, naturalidade, endereco) VALUES ('34455654377', '536577', 'Maria Antonieta', 'F', TO_DATE('1975/11/16', 'YYYY/MM/DD'), 'Mariana', 'Rua Raimundo Correa, numero 562, Itapetininga, SP');
INSERT INTO Candidato (CPF, RG, nome, sexo, dataNascimento, naturalidade, endereco) VALUES ('98776345455', '123234', 'Luiza Silva', 'F', TO_DATE('1987/11/01', 'YYYY/MM/DD'), 'Lorena', 'Rua Silva Pedro Lustosa, numero 878, Itapetininga, SP');
INSERT INTO Candidato (CPF, RG, nome, sexo, dataNascimento, naturalidade, endereco) VALUES ('34565768866', '543345', 'Macos Paulo', 'M', TO_DATE('1982/11/04', 'YYYY/MM/DD'), 'Araraquara', 'Rua Poncio Pilatos, numero 1122, Curitiba, PR');
INSERT INTO Candidato (CPF, RG, nome, sexo, dataNascimento, naturalidade, endereco) VALUES ('56578897645', '698764', 'Andressa Monique', 'F', TO_DATE('1992/11/23', 'YYYY/MM/DD'), 'Cascavel', 'Rua 34, numero 47, Belo Horizonte, MG');
INSERT INTO Candidato (CPF, RG, nome, sexo, dataNascimento, naturalidade, endereco) VALUES ('98765453435', '877653', 'Mateus Henrique', 'M', TO_DATE('1986/11/22', 'YYYY/MM/DD'), 'Vitória', 'Avenida das Nações, numero 47, apt. 12, Itumbiara, GO');
INSERT INTO Candidato (CPF, RG, nome, sexo, dataNascimento, naturalidade, endereco) VALUES ('43588767656', '876546', 'Andre Luiz', 'M', TO_DATE('1956/11/17', 'YYYY/MM/DD'), 'Santo André', 'Rua Barão do Rio Branco, numero 114, Anápolis, GO');
INSERT INTO Candidato (CPF, RG, nome, sexo, dataNascimento, naturalidade, endereco) VALUES ('09786565645', '098987', 'Marcos Santana', 'M', TO_DATE('1993/11/05', 'YYYY/MM/DD'), 'Diadema', 'Rua Augusto Silva, numero 1122, São Roque, SP');

/* Insert dos Partidos Politicos */
INSERT INTO PartidoPolitico (numeroEleitoral, nome, sigla, dataCriacao, dataRegistro) VALUES (15, 'Partido do Movimento Democrático Brasileiro', 'PMDB', TO_DATE('1965/04/12', 'YYYY/MM/DD'), TO_DATE('1981/06/30', 'YYYY/MM/DD'));
INSERT INTO PartidoPolitico (numeroEleitoral, nome, sigla, dataCriacao, dataRegistro) VALUES (13, 'Partido dos Trabalhadores', 'PT', TO_DATE('1980/02/10', 'YYYY/MM/DD'), TO_DATE('1982/02/11', 'YYYY/MM/DD'));
INSERT INTO PartidoPolitico (numeroEleitoral, nome, sigla, dataCriacao, dataRegistro) VALUES (45, 'Partido da Social Democracia Brasileira', 'PSDB', TO_DATE('1988/06/25', 'YYYY/MM/DD'), TO_DATE('1988/06/25', 'YYYY/MM/DD'));
INSERT INTO PartidoPolitico (numeroEleitoral, nome, sigla, dataCriacao, dataRegistro) VALUES (50, 'Partido Socialismo e Liberdade', 'PSOL', TO_DATE('2004/07/07', 'YYYY/MM/DD'), TO_DATE('2005/09/15', 'YYYY/MM/DD'));
INSERT INTO PartidoPolitico (numeroEleitoral, nome, sigla, dataCriacao, dataRegistro) VALUES (21, 'Partido Comunista Brasileiro	', 'PCB', TO_DATE('1922/03/25', 'YYYY/MM/DD'), TO_DATE('1996/03/09', 'YYYY/MM/DD'));

/* Insert das Filiações */
INSERT INTO Filiacao (id, numeroFiliacao, candidato, partido) VALUES (idFiliacao.NextVal, 152, '34212356744', 15);
INSERT INTO Filiacao (id, numeroFiliacao, candidato, partido) VALUES (idFiliacao.NextVal, 234, '12347980976', 13);
INSERT INTO Filiacao (id, numeroFiliacao, candidato, partido) VALUES (idFiliacao.NextVal, 189, '34235454321', 21);
INSERT INTO Filiacao (id, numeroFiliacao, candidato, partido) VALUES (idFiliacao.NextVal, 213, '54352645432', 21);
INSERT INTO Filiacao (id, numeroFiliacao, candidato, partido) VALUES (idFiliacao.NextVal, 54, '67567756446', 45);
INSERT INTO Filiacao (id, numeroFiliacao, candidato, partido) VALUES (idFiliacao.NextVal, 657, '86564354434', 21);
INSERT INTO Filiacao (id, numeroFiliacao, candidato, partido) VALUES (idFiliacao.NextVal, 189, '13435656756', 45);
INSERT INTO Filiacao (id, numeroFiliacao, candidato, partido) VALUES (idFiliacao.NextVal, 890, '34455654377', 50);
INSERT INTO Filiacao (id, numeroFiliacao, candidato, partido) VALUES (idFiliacao.NextVal, 97, '98776345455', 45);
INSERT INTO Filiacao (id, numeroFiliacao, candidato, partido) VALUES (idFiliacao.NextVal, 21, '34565768866', 21);
INSERT INTO Filiacao (id, numeroFiliacao, candidato, partido) VALUES (idFiliacao.NextVal, 14, '56578897645', 45);
INSERT INTO Filiacao (id, numeroFiliacao, candidato, partido) VALUES (idFiliacao.NextVal, 25, '98765453435', 50);
INSERT INTO Filiacao (id, numeroFiliacao, candidato, partido) VALUES (idFiliacao.NextVal, 122, '34235454321', 13);
INSERT INTO Filiacao (id, numeroFiliacao, candidato, partido) VALUES (idFiliacao.NextVal, 112, '43588767656', 45);

/* Insert dos Cargos */
INSERT INTO Cargo (id, esfera) VALUES (idCargo.NextVal, 'MUNICIPAL');
INSERT INTO Cargo (id, esfera) VALUES (idCargo.NextVal, 'MUNICIPAL');
INSERT INTO Cargo (id, esfera) VALUES (idCargo.NextVal, 'MUNICIPAL');
INSERT INTO Cargo (id, esfera) VALUES (idCargo.NextVal, 'MUNICIPAL');
INSERT INTO Cargo (id, esfera) VALUES (idCargo.NextVal, 'ESTADUAL');
INSERT INTO Cargo (id, esfera) VALUES (idCargo.NextVal, 'ESTADUAL');
INSERT INTO Cargo (id, esfera) VALUES (idCargo.NextVal, 'ESTADUAL');
INSERT INTO Cargo (id, esfera) VALUES (idCargo.NextVal, 'ESTADUAL');
INSERT INTO Cargo (id, esfera) VALUES (idCargo.NextVal, 'FEDERAL');
INSERT INTO Cargo (id, esfera) VALUES (idCargo.NextVal, 'FEDERAL');
INSERT INTO Cargo (id, esfera) VALUES (idCargo.NextVal, 'FEDERAL');
INSERT INTO Cargo (id, esfera) VALUES (idCargo.NextVal, 'FEDERAL');
INSERT INTO Cargo (id, esfera) VALUES (idCargo.NextVal, 'FEDERAL');
INSERT INTO Cargo (id, esfera) VALUES (idCargo.NextVal, 'FEDERAL');

/* Insert dos Concorrentes */
INSERT INTO Concorrente (filiacao, idCargo) VALUES (2,2);
INSERT INTO Concorrente (filiacao, idCargo) VALUES (3,3);
INSERT INTO Concorrente (filiacao, idCargo) VALUES (4,4);
INSERT INTO Concorrente (filiacao, idCargo) VALUES (5,5);
INSERT INTO Concorrente (filiacao, idCargo) VALUES (6,6);
INSERT INTO Concorrente (filiacao, idCargo) VALUES (7,7);
INSERT INTO Concorrente (filiacao, idCargo) VALUES (8,8);
INSERT INTO Concorrente (filiacao, idCargo) VALUES (9,9);
INSERT INTO Concorrente (filiacao, idCargo) VALUES (10,10);
INSERT INTO Concorrente (filiacao, idCargo) VALUES (11,11);
INSERT INTO Concorrente (filiacao, idCargo) VALUES (12,12);
INSERT INTO Concorrente (filiacao, idCargo) VALUES (13,13);
INSERT INTO Concorrente (filiacao, idCargo) VALUES (14,14);
INSERT INTO Concorrente (filiacao, idCargo) VALUES (15,15);

/* Insert dos Votos */
INSERT INTO Voto (id, eleitor, urna, filiacaoConcorrente, cargoConcorrente, data) VALUES (idVoto.NextVal, 02526673100, 2, 2, 2, TO_DATE('2015/03/09 8:30:25', 'YYYY/MM/DD HH:MI:SS'));
INSERT INTO Voto (id, eleitor, urna, filiacaoConcorrente, cargoConcorrente, data) VALUES (idVoto.NextVal, 42230739824, 2, 3, 3, TO_DATE('2015/03/09 8:31:25', 'YYYY/MM/DD HH:MI:SS'));
INSERT INTO Voto (id, eleitor, urna, filiacaoConcorrente, cargoConcorrente, data) VALUES (idVoto.NextVal, 23145678965, 2, 4, 4, TO_DATE('2016/03/09 8:32:25', 'YYYY/MM/DD HH:MI:SS'));

/* Insert das Intencoes de Voto */
INSERT INTO IntencaoVoto (id, eleitor, filiacaoConcorrente, cargoConcorrente, data) VALUES (idIntencaoVoto.NextVal, 02526673100, 2, 2, TO_DATE('2014/03/09 8:32:25', 'YYYY/MM/DD HH:MI:SS'));
INSERT INTO IntencaoVoto (id, eleitor, filiacaoConcorrente, cargoConcorrente, data) VALUES (idIntencaoVoto.NextVal, 42230739824, 3, 3, TO_DATE('2014/03/09 8:33:25', 'YYYY/MM/DD HH:MI:SS'));
INSERT INTO IntencaoVoto (id, eleitor, filiacaoConcorrente, cargoConcorrente, data) VALUES (idIntencaoVoto.NextVal, 42230739824, 4, 4, TO_DATE('2014/03/09 8:34:25', 'YYYY/MM/DD HH:MI:SS'));

/* Insert dos Cargos Municipais */
INSERT INTO Municipal (id, tipo) VALUES (2, 'Prefeito');
INSERT INTO Municipal (id, tipo) VALUES (3, 'Prefeito');
INSERT INTO Municipal (id, tipo) VALUES (4, 'Vereador');
INSERT INTO Municipal (id, tipo) VALUES (5, 'Vereador');

/* Insert dos Cargos Estaduais */
INSERT INTO Estadual (id, tipo) values (6, 'Deputado Estadual');
INSERT INTO Estadual (id, tipo) values (7, 'Deputado Estadual');
INSERT INTO Estadual (id, tipo) values (8, 'Governador');
INSERT INTO Estadual (id, tipo) values (9, 'Governador');

/* Insert dos Cargos Federais */
INSERT INTO Federal (id, tipo) values (10, 'Deputado Federal');
INSERT INTO Federal (id, tipo) values (11, 'Deputado Federal');
INSERT INTO Federal (id, tipo) values (12, 'Senador');
INSERT INTO Federal (id, tipo) values (13, 'Senador');
INSERT INTO Federal (id, tipo) values (14, 'Presidente');
INSERT INTO Federal (id, tipo) values (15, 'Presidene');

/* Insert dos Vereadores */
INSERT INTO Vereador (cargo, nome, numCadeira, anosMandato, anoBase) VALUES(4, 'Vereador', 1, 4, TO_DATE('2010', 'YYYY'));
INSERT INTO Vereador (cargo, nome, numCadeira, anosMandato, anoBase) VALUES(5, 'Vereador', 2, 4, TO_DATE('2010', 'YYYY'));

/* Insert dos Prefeitos */
INSERT INTO Prefeito (cargo, nome, numCadeira, anosMandato, anoBase, vice) VALUES(2, 'Prefeito', 1, 4, TO_DATE('2010', 'YYYY'), 'F');
INSERT INTO Prefeito (cargo, nome, numCadeira, anosMandato, anoBase, vice) VALUES(3, 'Prefeito', 2, 4, TO_DATE('2010', 'YYYY'), 'T');

/* Insert dos Deputados Estaduais */
INSERT INTO DeputadoEstadual (cargo, nome, numCadeira, anosMandato, anoBase) VALUES(6, 'Deputado Estadual', 1, 4, TO_DATE('2010', 'YYYY'));
INSERT INTO DeputadoEstadual (cargo, nome, numCadeira, anosMandato, anoBase) VALUES(7, 'Deputado Estadual', 2, 4, TO_DATE('2010', 'YYYY'));

/* Insert dos Governadores */
INSERT INTO Governador (cargo, nome, numCadeira, anosMandato, anoBase, vice) VALUES(8, 'Governador', 1, 4, TO_DATE('2010', 'YYYY'), 'F');
INSERT INTO Governador (cargo, nome, numCadeira, anosMandato, anoBase, vice) VALUES(9, 'Governador', 2, 4, TO_DATE('2010', 'YYYY'), 'T');

/* Insert dos Deputados Estaduais */
INSERT INTO DeputadoFederal (cargo, nome, numCadeira, anosMandato, anoBase) VALUES(10, 'Deputado Federal', 1, 4, TO_DATE('2010', 'YYYY'));
INSERT INTO DeputadoFederal (cargo, nome, numCadeira, anosMandato, anoBase) VALUES(11, 'Deputado Federal', 2, 4, TO_DATE('2010', 'YYYY'));

/* Insert dos Senadores */
INSERT INTO Senador (cargo, nome, numCadeira, anosMandato, anoBase) VALUES(12, 'Senador', 1, 4, TO_DATE('2010', 'YYYY'));
INSERT INTO Senador (cargo, nome, numCadeira, anosMandato, anoBase) VALUES(13, 'Senador', 2, 4, TO_DATE('2010', 'YYYY'));

/* Insert dos Presidentes */
INSERT INTO Presidente (cargo, nome, numCadeira, anosMandato, anoBase, vice) VALUES(14, 'Presidente', 1, 4, TO_DATE('2010', 'YYYY'), 'T');
INSERT INTO Presidente (cargo, nome, numCadeira, anosMandato, anoBase, vice) VALUES(15, 'Presidente', 2, 4, TO_DATE('2010', 'YYYY'), 'F');
