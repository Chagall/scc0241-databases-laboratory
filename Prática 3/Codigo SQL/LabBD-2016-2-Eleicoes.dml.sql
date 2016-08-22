INSERT INTO LE01ESTADO (Nome, Sigla) VALUES ('Acre', 'AC');
INSERT INTO LE01ESTADO (Nome, Sigla) VALUES ('Alagoas', 'AL'); -- 2
INSERT INTO LE01ESTADO (Nome, Sigla) VALUES ('Amazonas', 'AM'); -- 3
INSERT INTO LE01ESTADO (Nome, Sigla) VALUES ('Amapá', 'AP'); -- 4
INSERT INTO LE01ESTADO (Nome, Sigla) VALUES ('Bahia', 'BA'); -- 5
INSERT INTO LE01ESTADO (Nome, Sigla) VALUES ('Ceará', 'CE'); -- 6
INSERT INTO LE01ESTADO (Nome, Sigla) VALUES ('Distrito Federal', 'DF'); --7
INSERT INTO LE01ESTADO (Nome, Sigla) VALUES ('Espírito Santo', 'ES'); -- 8
INSERT INTO LE01ESTADO (Nome, Sigla) VALUES ('Goiás', 'GO'); -- 9
INSERT INTO LE01ESTADO (Nome, Sigla) VALUES ('Maranhão', 'MA'); -- 10
INSERT INTO LE01ESTADO (Nome, Sigla) VALUES ('Minas Gerais', 'MG'); -- 11
INSERT INTO LE01ESTADO (Nome, Sigla) VALUES ('Mato Grosso do Sul', 'MS'); -- 12
INSERT INTO LE01ESTADO (Nome, Sigla) VALUES ('Mato Grosso', 'MT'); -- 13
INSERT INTO LE01ESTADO (Nome, Sigla) VALUES ('Pará', 'PA'); -- 14
INSERT INTO LE01ESTADO (Nome, Sigla) VALUES ('Paraíba', 'PB'); -- 15
INSERT INTO LE01ESTADO (Nome, Sigla) VALUES ('Pernambuco', 'PE'); -- 16
INSERT INTO LE01ESTADO (Nome, Sigla) VALUES ('Piauí', 'PI'); -- 17
INSERT INTO LE01ESTADO (Nome, Sigla) VALUES ('Paraná', 'PR'); -- 18
INSERT INTO LE01ESTADO (Nome, Sigla) VALUES ('Rio de Janeiro', 'RJ'); -- 19
INSERT INTO LE01ESTADO (Nome, Sigla) VALUES ('Rio Grande do Norte', 'RN'); -- 20
INSERT INTO LE01ESTADO (Nome, Sigla) VALUES ('Rondônia', 'RO'); -- 21
INSERT INTO LE01ESTADO (Nome, Sigla) VALUES ('Roraima', 'RR'); -- 22
INSERT INTO LE01ESTADO (Nome, Sigla) VALUES ('Rio Grande do Sul', 'RS'); -- 23
INSERT INTO LE01ESTADO (Nome, Sigla) VALUES ('Santa Catarina', 'SC'); -- 24
INSERT INTO LE01ESTADO (Nome, Sigla) VALUES ('Sergipe', 'SE'); -- 25
INSERT INTO LE01ESTADO (Nome, Sigla) VALUES ('São Paulo', 'SP'); -- 26
INSERT INTO LE01ESTADO (Nome, Sigla) VALUES ('Tocantins', 'TO'); -- 27

INSERT INTO LE03ZONA (NroZona, NroDeUrnasReservas) VALUES (1, 5);
INSERT INTO LE03ZONA (NroZona, NroDeUrnasReservas) VALUES (2, 4);
INSERT INTO LE03ZONA (NroZona, NroDeUrnasReservas) VALUES (3, 6);
INSERT INTO LE03ZONA (NroZona, NroDeUrnasReservas) VALUES (4, 10);
INSERT INTO LE03ZONA (NroZona, NroDeUrnasReservas) VALUES (5, 8);
INSERT INTO LE03ZONA (NroZona, NroDeUrnasReservas) VALUES (6, 7);
INSERT INTO LE03ZONA (NroZona, NroDeUrnasReservas) VALUES (7, 1);
INSERT INTO LE03ZONA (NroZona, NroDeUrnasReservas) VALUES (8, 11);
INSERT INTO LE03ZONA (NroZona, NroDeUrnasReservas) VALUES (9, 13);
INSERT INTO LE03ZONA (NroZona, NroDeUrnasReservas) VALUES (10, 15);
INSERT INTO LE03ZONA (NroZona, NroDeUrnasReservas) VALUES (11, 2);
INSERT INTO LE03ZONA (NroZona, NroDeUrnasReservas) VALUES (12, 3);
INSERT INTO LE03ZONA (NroZona, NroDeUrnasReservas) VALUES (13, 6);
INSERT INTO LE03ZONA (NroZona, NroDeUrnasReservas) VALUES (14, 7);
INSERT INTO LE03ZONA (NroZona, NroDeUrnasReservas) VALUES (15, 5);
INSERT INTO LE03ZONA (NroZona, NroDeUrnasReservas) VALUES (16, 9);
INSERT INTO LE03ZONA (NroZona, NroDeUrnasReservas) VALUES (17, 8);
INSERT INTO LE03ZONA (NroZona, NroDeUrnasReservas) VALUES (18, 2);
INSERT INTO LE03ZONA (NroZona, NroDeUrnasReservas) VALUES (19, 20);
INSERT INTO LE03ZONA (NroZona, NroDeUrnasReservas) VALUES (20, 22);
INSERT INTO LE03ZONA (NroZona, NroDeUrnasReservas) VALUES (21, 1);
INSERT INTO LE03ZONA (NroZona, NroDeUrnasReservas) VALUES (22, 2);
INSERT INTO LE03ZONA (NroZona, NroDeUrnasReservas) VALUES (23, 3);
INSERT INTO LE03ZONA (NroZona, NroDeUrnasReservas) VALUES (24, 4);
INSERT INTO LE03ZONA (NroZona, NroDeUrnasReservas) VALUES (25, 5);
INSERT INTO LE03ZONA (NroZona, NroDeUrnasReservas) VALUES (26, 7);
INSERT INTO LE03ZONA (NroZona, NroDeUrnasReservas) VALUES (27, 3);
INSERT INTO LE03ZONA (NroZona, NroDeUrnasReservas) VALUES (28, 9);
INSERT INTO LE03ZONA (NroZona, NroDeUrnasReservas) VALUES (29, 4);
INSERT INTO LE03ZONA (NroZona, NroDeUrnasReservas) VALUES (30, 5);
INSERT INTO LE03ZONA (NroZona, NroDeUrnasReservas) VALUES (31, 4);
INSERT INTO LE03ZONA (NroZona, NroDeUrnasReservas) VALUES (32, 2);
INSERT INTO LE03ZONA (NroZona, NroDeUrnasReservas) VALUES (33, 1);
INSERT INTO LE03ZONA (NroZona, NroDeUrnasReservas) VALUES (34, 2);
INSERT INTO LE03ZONA (NroZona, NroDeUrnasReservas) VALUES (35, 7);
INSERT INTO LE03ZONA (NroZona, NroDeUrnasReservas) VALUES (36, 6);
INSERT INTO LE03ZONA (NroZona, NroDeUrnasReservas) VALUES (37, 3);
INSERT INTO LE03ZONA (NroZona, NroDeUrnasReservas) VALUES (38, 4);

INSERT INTO LE02CIDADE (Nome, SiglaEstado, Populacao) VALUES ('Sao Carlos', 'SP', 200000);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Centro', 111111, 'Sao Carlos', 'SP', 1);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Jardim Santa Paula', 111112, 'Sao Carlos', 'SP', 1);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Jardim Bandeirantes', 111113, 'Sao Carlos', 'SP', 1);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Cidade Aracy', 111114, 'Sao Carlos', 'SP', 1);
INSERT INTO LE02CIDADE (Nome, SiglaEstado, Populacao) VALUES ('Sao Paulo', 'SP', 1000000);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Centro', 111115, 'Sao Paulo', 'SP', 2);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Pinheiros', 111116, 'Sao Paulo', 'SP', 3);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Higienopolis', 111117, 'Sao Paulo', 'SP', 4);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Itaquera', 111118, 'Sao Paulo', 'SP', 5);
INSERT INTO LE02CIDADE (Nome, SiglaEstado, Populacao) VALUES ('Sao Caetano', 'SP', 300000);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Centro', 111119, 'Sao Caetano', 'SP', 6);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Caxingui', 111121, 'Sao Caetano', 'SP', 6);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Jardim Vitoria', 111131, 'Sao Caetano', 'SP', 6);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Serpa', 111561, 'Sao Caetano', 'SP', 6);
INSERT INTO LE02CIDADE (Nome, SiglaEstado, Populacao) VALUES ('Campinas', 'SP', 250000);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Jardim Itauna', 111141, 'Campinas', 'SP', 7);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Jardim dos Eucaliptos', 111151, 'Campinas', 'SP', 7);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Jardins', 111161, 'Campinas', 'SP', 7);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Centro', 111171, 'Campinas', 'SP', 7);
INSERT INTO LE02CIDADE (Nome, SiglaEstado, Populacao) VALUES ('Sao Roque', 'SP', 100000);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Centro', 111181, 'Sao Roque', 'SP', 8);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Vila Rosina', 111191, 'Sao Roque', 'SP', 8);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Pirituba', 111211, 'Sao Roque', 'SP', 8);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Nova Sao Roque', 111311, 'Sao Roque', 'SP', 8);

INSERT INTO LE02CIDADE (Nome, SiglaEstado, Populacao) VALUES ('Florianopolis', 'SC', 150000);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Centro', 111411, 'Florianopolis', 'SC', 9);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Tucuruvi', 111511, 'Florianopolis', 'SC', 9);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Jabaquara', 111611, 'Florianopolis', 'SC', 9);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Jaragua', 111711, 'Florianopolis', 'SC', 9);
INSERT INTO LE02CIDADE (Nome, SiglaEstado, Populacao) VALUES ('Fraiburgo', 'SC', 10000);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Vila Clarisse', 111811, 'Fraiburgo', 'SC', 10);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Vila Aurora', 111911, 'Fraiburgo', 'SC', 10);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Agua Branca', 112111, 'Fraiburgo', 'SC', 10);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Centro', 113111, 'Fraiburgo', 'SC', 10);
INSERT INTO LE02CIDADE (Nome, SiglaEstado, Populacao) VALUES ('Joinville', 'SC', 300000);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Barra da Tijuca', 114111, 'Joinville', 'SC', 11);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Barra Funda', 115111, 'Joinville', 'SC', 11);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Belem', 116111, 'Joinville', 'SC', 11);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Centro', 117111, 'Joinville', 'SC', 11);
INSERT INTO LE02CIDADE (Nome, SiglaEstado, Populacao) VALUES ('Blumenau', 'SC', 160000);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Bras', 118111, 'Blumenau', 'SC', 12);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Bresser', 119111, 'Blumenau', 'SC', 12);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Mooca', 121111, 'Blumenau', 'SC', 12);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Centro', 131111, 'Blumenau', 'SC', 12);
INSERT INTO LE02CIDADE (Nome, SiglaEstado, Populacao) VALUES ('Crisciuma', 'SC', 130000);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Tiete', 141111, 'Crisciuma', 'SC', 31);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Armenia', 151111, 'Crisciuma', 'SC', 31);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Vila Madalena', 161111, 'Crisciuma', 'SC', 32);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Centro', 171111, 'Crisciuma', 'SC', 32);

INSERT INTO LE02CIDADE (Nome, SiglaEstado, Populacao) VALUES ('Palmas', 'TO', 300000);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Centro', 181111, 'Palmas', 'TO', 33);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Grajau', 191111, 'Palmas', 'TO', 33);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Lapa', 211111, 'Palmas', 'TO', 33);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Morumbi', 232111, 'Palmas', 'TO', 34);
INSERT INTO LE02CIDADE (Nome, SiglaEstado, Populacao) VALUES ('Guaral', 'TO', 30000);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Centro', 311111, 'Guaral', 'TO', 35);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Ceasa', 411111, 'Guaral', 'TO', 35);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Penha', 511111, 'Guaral', 'TO', 35);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Castelo', 611111, 'Guaral', 'TO', 35);
INSERT INTO LE02CIDADE (Nome, SiglaEstado, Populacao) VALUES ('Araguaina', 'TO', 100000);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Centro', 711111, 'Araguaina', 'TO', 36);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Caraguatatuba', 811111, 'Araguaina', 'TO', 36);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Maresias', 911111, 'Araguaina', 'TO', 37);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Praia Grande', 111122, 'Araguaina', 'TO', 37);
INSERT INTO LE02CIDADE (Nome, SiglaEstado, Populacao) VALUES ('Porto Nacional', 'TO', 200000);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Centro', 111123, 'Porto Nacional', 'TO', 38);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Tainha', 111124, 'Porto Nacional', 'TO', 38);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Jardinopolis', 111125, 'Porto Nacional', 'TO', 38);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Centro 2', 111126, 'Porto Nacional', 'TO', 38);
INSERT INTO LE02CIDADE (Nome, SiglaEstado, Populacao) VALUES ('Araguatins', 'TO', 120000);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Centro', 111127, 'Araguatins', 'TO', 13);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Nova Araguatins', 111128, 'Araguatins', 'TO', 13);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Francisco Morato', 111129, 'Araguatins', 'TO', 13);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Vila Rosina', 111130, 'Araguatins', 'TO', 13);

INSERT INTO LE02CIDADE (Nome, SiglaEstado, Populacao) VALUES ('Fortaleza', 'CE', 500000);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Centro', 111132, 'Fortaleza', 'CE', 14);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Nova Fortaleza', 111133, 'Fortaleza', 'CE', 14);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Sao Carlos', 111134, 'Fortaleza', 'CE', 14);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Aracatuba', 111135, 'Fortaleza', 'CE', 14);
INSERT INTO LE02CIDADE (Nome, SiglaEstado, Populacao) VALUES ('Caucaia', 'CE', 400000);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Centro', 111136, 'Caucaia', 'CE', 14);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Presidente Prudente', 111137, 'Caucaia', 'CE', 14);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Vila Costa', 111138, 'Caucaia', 'CE', 14);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Nova Caucaia', 111139, 'Caucaia', 'CE', 14);
INSERT INTO LE02CIDADE (Nome, SiglaEstado, Populacao) VALUES ('Sobral', 'CE', 100000);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Centro', 111140, 'Sobral', 'CE', 15);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Jardim Santa Paula', 111142, 'Sobral', 'CE', 15);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Jardim Nova Era', 111143, 'Sobral', 'CE', 15);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Jardim Esperanca', 111144, 'Sobral', 'CE', 15);
INSERT INTO LE02CIDADE (Nome, SiglaEstado, Populacao) VALUES ('Crato', 'CE', 200000);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Centro', 111145, 'Crato', 'CE', 16);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Jardins II', 111146, 'Crato', 'CE', 16);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Jardins I', 111147, 'Crato', 'CE', 16);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Cratinopolis', 111148, 'Crato', 'CE', 16);
INSERT INTO LE02CIDADE (Nome, SiglaEstado, Populacao) VALUES ('Juazeiro do Norte', 'CE', 140000);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Centro', 111149, 'Juazeiro do Norte', 'CE', 17);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Vilinha', 111150, 'Juazeiro do Norte', 'CE', 17);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Jardins', 111152, 'Juazeiro do Norte', 'CE', 17);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Parque Central', 111153, 'Juazeiro do Norte', 'CE', 17);

INSERT INTO LE02CIDADE (Nome, SiglaEstado, Populacao) VALUES ('Manaus', 'AM', 300000);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Centro', 111154, 'Manaus', 'AM', 18);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Vila Nova', 111155, 'Manaus', 'AM', 18);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Vila Rica', 111156, 'Manaus', 'AM', 18);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Jardim Vitoria', 111157, 'Manaus', 'AM', 18);
INSERT INTO LE02CIDADE (Nome, SiglaEstado, Populacao) VALUES ('Parintins', 'AM', 200000);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Centro', 111158, 'Parintins', 'AM', 19);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Ouro Preto', 111159, 'Parintins', 'AM', 19);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Jardinopolis', 111160, 'Parintins', 'AM', 19);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Augusta', 111162, 'Parintins', 'AM', 19);
INSERT INTO LE02CIDADE (Nome, SiglaEstado, Populacao) VALUES ('Humaita', 'AM', 100000);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Centro', 111163, 'Humaita', 'AM', 20);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Vila Seixas', 111164, 'Humaita', 'AM', 20);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Parque Vitoria', 111165, 'Humaita', 'AM', 20);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Parque 120', 111166, 'Humaita', 'AM', 20);
INSERT INTO LE02CIDADE (Nome, SiglaEstado, Populacao) VALUES ('Coari', 'AM', 250000);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Centro', 111167, 'Coari', 'AM', 21);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Oscar Freire', 111168, 'Coari', 'AM', 21);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Vila Augusta', 111169, 'Coari', 'AM', 21);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Haddock Lobo', 111170, 'Coari', 'AM', 21);
INSERT INTO LE02CIDADE (Nome, SiglaEstado, Populacao) VALUES ('Maues', 'AM', 180000);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Centro', 111172, 'Maues', 'AM', 22);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Consolacao', 111173, 'Maues', 'AM', 22);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Jardins', 111174, 'Maues', 'AM', 22);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Largo do Paissandu', 111175, 'Maues', 'AM', 22);

INSERT INTO LE02CIDADE (Nome, SiglaEstado, Populacao) VALUES ('Brasilia', 'DF', 200000);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Centro', 111176, 'Brasilia', 'DF', 23);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Praca Ramos', 111177, 'Brasilia', 'DF', 23);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Jardim Curuzu', 111178, 'Brasilia', 'DF', 24);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Jabaquara', 111179, 'Brasilia', 'DF', 24);
INSERT INTO LE02CIDADE (Nome, SiglaEstado, Populacao) VALUES ('Gama', 'DF', 80000);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Centro', 111180, 'Gama', 'DF', 25);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Pinheiros', 111182, 'Gama', 'DF', 25);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Caxingui', 111183, 'Gama', 'DF', 25);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Butanta', 111184, 'Gama', 'DF', 25);
INSERT INTO LE02CIDADE (Nome, SiglaEstado, Populacao) VALUES ('Ceilandia', 'DF', 70000);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Centro', 111185, 'Ceilandia', 'DF', 26);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Alto da Lapa', 111186, 'Ceilandia', 'DF', 26);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Jardim Europa', 111187, 'Ceilandia', 'DF', 26);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Alphaville', 111188, 'Ceilandia', 'DF', 27);
INSERT INTO LE02CIDADE (Nome, SiglaEstado, Populacao) VALUES ('Taguatinga', 'DF', 230000);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Centro', 111190, 'Taguatinga', 'DF', 28);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Santa Fe', 111192, 'Taguatinga', 'DF', 29);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Araraquara', 111193, 'Taguatinga', 'DF', 29);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Rio Claro', 111194, 'Taguatinga', 'DF', 29);
INSERT INTO LE02CIDADE (Nome, SiglaEstado, Populacao) VALUES ('Sobradinho', 'DF', 90000);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Centro', 111195, 'Sobradinho', 'DF', 30);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Jundiai', 111196, 'Sobradinho', 'DF', 30);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Barueri', 111197, 'Sobradinho', 'DF', 30);
INSERT INTO LE04BAIRRO (Nome, CEP, NomeCidade, SiglaEstado, NroZona) VALUES ('Caieiras', 111198, 'Sobradinho', 'DF', 30);

INSERT INTO LE05URNA (NSerial, Estado, NroZona) VALUES (1, 'funcional', 1);
INSERT INTO LE05URNA (NSerial, Estado, NroZona) VALUES (2, 'funcional', 2);
INSERT INTO LE05URNA (NSerial, Estado, NroZona) VALUES (3, 'funcional', 3);
INSERT INTO LE05URNA (NSerial, Estado, NroZona) VALUES (4, 'funcional', 4);
INSERT INTO LE05URNA (NSerial, Estado, NroZona) VALUES (5, 'funcional', 5);
INSERT INTO LE05URNA (NSerial, Estado, NroZona) VALUES (6, 'funcional', 6);
INSERT INTO LE05URNA (NSerial, Estado, NroZona) VALUES (7, 'funcional', 7);
INSERT INTO LE05URNA (NSerial, Estado, NroZona) VALUES (8, 'funcional', 8);

INSERT INTO LE05URNA (NSerial, Estado, NroZona) VALUES (9, 'funcional', 9);
INSERT INTO LE05URNA (NSerial, Estado, NroZona) VALUES (10, 'funcional', 10);
INSERT INTO LE05URNA (NSerial, Estado, NroZona) VALUES (11, 'funcional', 11);
INSERT INTO LE05URNA (NSerial, Estado, NroZona) VALUES (12, 'funcional', 12);
INSERT INTO LE05URNA (NSerial, Estado, NroZona) VALUES (13, 'funcional', 31);
INSERT INTO LE05URNA (NSerial, Estado, NroZona) VALUES (14, 'funcional', 32);

INSERT INTO LE05URNA (NSerial, Estado, NroZona) VALUES (15, 'funcional', 33);
INSERT INTO LE05URNA (NSerial, Estado, NroZona) VALUES (16, 'funcional', 34);
INSERT INTO LE05URNA (NSerial, Estado, NroZona) VALUES (17, 'funcional', 35);
INSERT INTO LE05URNA (NSerial, Estado, NroZona) VALUES (18, 'funcional', 36);
INSERT INTO LE05URNA (NSerial, Estado, NroZona) VALUES (19, 'funcional', 37);
INSERT INTO LE05URNA (NSerial, Estado, NroZona) VALUES (20, 'funcional', 38);
INSERT INTO LE05URNA (NSerial, Estado, NroZona) VALUES (21, 'funcional', 13);

INSERT INTO LE05URNA (NSerial, Estado, NroZona) VALUES (22, 'funcional', 14);
INSERT INTO LE05URNA (NSerial, Estado, NroZona) VALUES (23, 'funcional', 15);
INSERT INTO LE05URNA (NSerial, Estado, NroZona) VALUES (24, 'funcional', 16);
INSERT INTO LE05URNA (NSerial, Estado, NroZona) VALUES (25, 'funcional', 17);

INSERT INTO LE05URNA (NSerial, Estado, NroZona) VALUES (26, 'funcional', 18);
INSERT INTO LE05URNA (NSerial, Estado, NroZona) VALUES (27, 'funcional', 19);
INSERT INTO LE05URNA (NSerial, Estado, NroZona) VALUES (28, 'funcional', 20);
INSERT INTO LE05URNA (NSerial, Estado, NroZona) VALUES (29, 'funcional', 21);
INSERT INTO LE05URNA (NSerial, Estado, NroZona) VALUES (30, 'funcional', 22);

INSERT INTO LE05URNA (NSerial, Estado, NroZona) VALUES (31, 'funcional', 23);
INSERT INTO LE05URNA (NSerial, Estado, NroZona) VALUES (32, 'funcional', 24);
INSERT INTO LE05URNA (NSerial, Estado, NroZona) VALUES (33, 'funcional', 25);
INSERT INTO LE05URNA (NSerial, Estado, NroZona) VALUES (34, 'funcional', 26);
INSERT INTO LE05URNA (NSerial, Estado, NroZona) VALUES (35, 'funcional', 27);
INSERT INTO LE05URNA (NSerial, Estado, NroZona) VALUES (36, 'funcional', 28);
INSERT INTO LE05URNA (NSerial, Estado, NroZona) VALUES (37, 'funcional', 29);
INSERT INTO LE05URNA (NSerial, Estado, NroZona) VALUES (38, 'funcional', 20);

INSERT INTO LE06SESSAO (NroSessao, NroZona, NSerial) VALUES (1, 1, 1);
INSERT INTO LE06SESSAO (NroSessao, NroZona, NSerial) VALUES (2, 2, 2);
INSERT INTO LE06SESSAO (NroSessao, NroZona, NSerial) VALUES (3, 3, 3);
INSERT INTO LE06SESSAO (NroSessao, NroZona, NSerial) VALUES (4, 4, 4);
INSERT INTO LE06SESSAO (NroSessao, NroZona, NSerial) VALUES (5, 5, 5);
INSERT INTO LE06SESSAO (NroSessao, NroZona, NSerial) VALUES (6, 6, 6);
INSERT INTO LE06SESSAO (NroSessao, NroZona, NSerial) VALUES (7, 7, 7);
INSERT INTO LE06SESSAO (NroSessao, NroZona, NSerial) VALUES (8, 8, 8);
INSERT INTO LE06SESSAO (NroSessao, NroZona, NSerial) VALUES (9, 9, 9);
INSERT INTO LE06SESSAO (NroSessao, NroZona, NSerial) VALUES (10, 10, 10);
INSERT INTO LE06SESSAO (NroSessao, NroZona, NSerial) VALUES (11, 11, 11);
INSERT INTO LE06SESSAO (NroSessao, NroZona, NSerial) VALUES (12, 12, 12);
INSERT INTO LE06SESSAO (NroSessao, NroZona, NSerial) VALUES (13, 13, 13);
INSERT INTO LE06SESSAO (NroSessao, NroZona, NSerial) VALUES (14, 14, 14);
INSERT INTO LE06SESSAO (NroSessao, NroZona, NSerial) VALUES (15, 15, 15);
INSERT INTO LE06SESSAO (NroSessao, NroZona, NSerial) VALUES (16, 16, 16);
INSERT INTO LE06SESSAO (NroSessao, NroZona, NSerial) VALUES (17, 17, 17);
INSERT INTO LE06SESSAO (NroSessao, NroZona, NSerial) VALUES (18, 18, 18);
INSERT INTO LE06SESSAO (NroSessao, NroZona, NSerial) VALUES (19, 19, 19);
INSERT INTO LE06SESSAO (NroSessao, NroZona, NSerial) VALUES (20, 20, 20);
INSERT INTO LE06SESSAO (NroSessao, NroZona, NSerial) VALUES (21, 21, 21);
INSERT INTO LE06SESSAO (NroSessao, NroZona, NSerial) VALUES (22, 22, 22);
INSERT INTO LE06SESSAO (NroSessao, NroZona, NSerial) VALUES (23, 23, 23);
INSERT INTO LE06SESSAO (NroSessao, NroZona, NSerial) VALUES (24, 24, 24);
INSERT INTO LE06SESSAO (NroSessao, NroZona, NSerial) VALUES (25, 25, 25);
INSERT INTO LE06SESSAO (NroSessao, NroZona, NSerial) VALUES (26, 26, 26);
INSERT INTO LE06SESSAO (NroSessao, NroZona, NSerial) VALUES (27, 27, 27);
INSERT INTO LE06SESSAO (NroSessao, NroZona, NSerial) VALUES (28, 28, 28);
INSERT INTO LE06SESSAO (NroSessao, NroZona, NSerial) VALUES (29, 29, 29);
INSERT INTO LE06SESSAO (NroSessao, NroZona, NSerial) VALUES (30, 30, 30);
INSERT INTO LE06SESSAO (NroSessao, NroZona, NSerial) VALUES (31, 31, 31);
INSERT INTO LE06SESSAO (NroSessao, NroZona, NSerial) VALUES (32, 32, 32);
INSERT INTO LE06SESSAO (NroSessao, NroZona, NSerial) VALUES (33, 33, 33);
INSERT INTO LE06SESSAO (NroSessao, NroZona, NSerial) VALUES (34, 34, 34);
INSERT INTO LE06SESSAO (NroSessao, NroZona, NSerial) VALUES (35, 35, 35);
INSERT INTO LE06SESSAO (NroSessao, NroZona, NSerial) VALUES (36, 36, 36);
INSERT INTO LE06SESSAO (NroSessao, NroZona, NSerial) VALUES (37, 37, 37);
INSERT INTO LE06SESSAO (NroSessao, NroZona, NSerial) VALUES (38, 38, 38);

INSERT INTO LE07PARTIDO (Sigla, Nome) VALUES ('PMDB', 'PARTIDO DO MOVIMENTO DEMOCRÁTICO BRASILEIRO');
INSERT INTO LE07PARTIDO (Sigla, Nome) VALUES ('PTB', 'PARTIDO TRABALHISTA BRASILEIRO');
INSERT INTO LE07PARTIDO (Sigla, Nome) VALUES ('PDT', 'PARTIDO DEMOCRÁTICO TRABALHISTA');
INSERT INTO LE07PARTIDO (Sigla, Nome) VALUES ('PT', 'PARTIDO DOS TRABALHADORES');
INSERT INTO LE07PARTIDO (Sigla, Nome) VALUES ('DEM', 'DEMOCRATAS');
INSERT INTO LE07PARTIDO (Sigla, Nome) VALUES ('PCdoB', 'PARTIDO COMUNISTA DO BRASIL');
INSERT INTO LE07PARTIDO (Sigla, Nome) VALUES ('PSB', 'PARTIDO SOCIALISTA BRASILEIRO');
INSERT INTO LE07PARTIDO (Sigla, Nome) VALUES ('PSDB', 'PARTIDO DA SOCIAL DEMOCRACIA BRASILEIRA');
INSERT INTO LE07PARTIDO (Sigla, Nome) VALUES ('PTC', 'PARTIDO TRABALHISTA CRISTÃO');
INSERT INTO LE07PARTIDO (Sigla, Nome) VALUES ('PSC', 'PARTIDO SOCIAL CRISTÃO');
INSERT INTO LE07PARTIDO (Sigla, Nome) VALUES ('PMN', 'PARTIDO DA MOBILIZAÇÃO NACIONAL');
INSERT INTO LE07PARTIDO (Sigla, Nome) VALUES ('PRP', 'PARTIDO REPUBLICANO PROGRESSISTA');
INSERT INTO LE07PARTIDO (Sigla, Nome) VALUES ('PPS', 'PARTIDO POPULAR SOCIALISTA');
INSERT INTO LE07PARTIDO (Sigla, Nome) VALUES ('PV', 'PARTIDO VERDE');
INSERT INTO LE07PARTIDO (Sigla, Nome) VALUES ('PTdoB', 'PARTIDO TRABALHISTA DO BRASIL');
INSERT INTO LE07PARTIDO (Sigla, Nome) VALUES ('PP', 'PARTIDO PROGRESSISTA');
INSERT INTO LE07PARTIDO (Sigla, Nome) VALUES ('PSTU', 'PARTIDO SOCIALISTA DOS TRABALHADORES UNIFICADO');
INSERT INTO LE07PARTIDO (Sigla, Nome) VALUES ('PCB', 'PARTIDO COMUNISTA BRASILEIRO');
INSERT INTO LE07PARTIDO (Sigla, Nome) VALUES ('PRTB', 'PARTIDO RENOVADOR TRABALHISTA BRASILEIRO');
INSERT INTO LE07PARTIDO (Sigla, Nome) VALUES ('PHS', 'PARTIDO HUMANISTA DA SOLIDARIEDADE');
INSERT INTO LE07PARTIDO (Sigla, Nome) VALUES ('PSDC', 'PARTIDO SOCIAL DEMOCRATA CRISTÃO');
INSERT INTO LE07PARTIDO (Sigla, Nome) VALUES ('PCO', 'PARTIDO DA CAUSA OPERÁRIA');
INSERT INTO LE07PARTIDO (Sigla, Nome) VALUES ('PTN', 'PARTIDO TRABALHISTA NACIONAL');
INSERT INTO LE07PARTIDO (Sigla, Nome) VALUES ('PSL', 'PARTIDO SOCIAL LIBERAL');
INSERT INTO LE07PARTIDO (Sigla, Nome) VALUES ('PRB', 'PARTIDO REPUBLICANO BRASILEIRO');
INSERT INTO LE07PARTIDO (Sigla, Nome) VALUES ('PSOL', 'PARTIDO SOCIALISMO E LIBERDADE');
INSERT INTO LE07PARTIDO (Sigla, Nome) VALUES ('PR', 'PARTIDO DA REPÚBLICA');
INSERT INTO LE07PARTIDO (Sigla, Nome) VALUES ('PSD', 'PARTIDO SOCIAL DEMOCRÁTICO');
INSERT INTO LE07PARTIDO (Sigla, Nome) VALUES ('PPL', 'PARTIDO PÁTRIA LIVRE');
INSERT INTO LE07PARTIDO (Sigla, Nome) VALUES ('PEN', 'PARTIDO ECOLÓGICO NACIONAL');
INSERT INTO LE07PARTIDO (Sigla, Nome) VALUES ('PROS', 'PARTIDO REPUBLICANO DA ORDEM SOCIAL');
INSERT INTO LE07PARTIDO (Sigla, Nome) VALUES ('SD', 'SOLIDARIEDADE');
INSERT INTO LE07PARTIDO (Sigla, Nome) VALUES ('NOVO', 'PARTIDO NOVO');
INSERT INTO LE07PARTIDO (Sigla, Nome) VALUES ('REDE', 'REDE SUSTENTABILIDADE');
INSERT INTO LE07PARTIDO (Sigla, Nome) VALUES ('PMB', 'PARTIDO DA MULHER BRASILEIRA');

INSERT INTO LE08CANDIDATO (NroCand, Tipo, Nome) VALUES (0, 'especial', 'Branco');
INSERT INTO LE08CANDIDATO (NroCand, Tipo, Nome) VALUES (-1, 'especial', 'Nulo');

INSERT INTO LE08CANDIDATO (NroCand, Tipo, CPF, Nome, Idade, Apelido, SiglaPartido) VALUES (1, 'politico', 1, 'Jose', 67, 'Ze', 'PMDB');
INSERT INTO LE08CANDIDATO (NroCand, Tipo, CPF, Nome, Idade, SiglaPartido) VALUES (2, 'politico', 2, 'Antonio', 34, 'PTB');
INSERT INTO LE08CANDIDATO (NroCand, Tipo, CPF, Nome, Idade, SiglaPartido) VALUES (3, 'politico', 3, 'Hugo', 37, 'PDT');
INSERT INTO LE08CANDIDATO (NroCand, Tipo, CPF, Nome, Idade, SiglaPartido) VALUES (4, 'politico', 4, 'Gabriel', 44, 'PT');
INSERT INTO LE08CANDIDATO (NroCand, Tipo, CPF, Nome, Idade, SiglaPartido) VALUES (5, 'politico', 5, 'Luiz', 48, 'DEM');
INSERT INTO LE08CANDIDATO (NroCand, Tipo, CPF, Nome, Idade, SiglaPartido) VALUES (6, 'politico', 6, 'Natan', 39, 'PCdoB');
INSERT INTO LE08CANDIDATO (NroCand, Tipo, CPF, Nome, Idade, SiglaPartido) VALUES (7, 'politico', 7, 'Lucio', 50, 'PSB');
INSERT INTO LE08CANDIDATO (NroCand, Tipo, CPF, Nome, Idade, SiglaPartido) VALUES (8, 'politico', 8, 'William', 55, 'PSDB');
INSERT INTO LE08CANDIDATO (NroCand, Tipo, CPF, Nome, Idade, SiglaPartido) VALUES (9, 'politico', 9, 'Fernando', 68, 'PTC');
INSERT INTO LE08CANDIDATO (NroCand, Tipo, CPF, Nome, Idade, SiglaPartido) VALUES (10, 'politico', 10, 'Robson', 45, 'PSC');
INSERT INTO LE08CANDIDATO (NroCand, Tipo, CPF, Nome, Idade, SiglaPartido) VALUES (11, 'politico', 11, 'Carlos', 76, 'PMN');
INSERT INTO LE08CANDIDATO (NroCand, Tipo, CPF, Nome, Idade, SiglaPartido) VALUES (12, 'politico', 12, 'Jaqueline', 39, 'PRP');
INSERT INTO LE08CANDIDATO (NroCand, Tipo, CPF, Nome, Idade, SiglaPartido) VALUES (13, 'politico', 13, 'Mirela', 40, 'PPS');
INSERT INTO LE08CANDIDATO (NroCand, Tipo, CPF, Nome, Idade, SiglaPartido) VALUES (14, 'politico', 14, 'Anderson', 44, 'PV');
INSERT INTO LE08CANDIDATO (NroCand, Tipo, CPF, Nome, Idade, SiglaPartido) VALUES (15, 'politico', 15, 'Michelle', 60, 'PTdoB');
INSERT INTO LE08CANDIDATO (NroCand, Tipo, CPF, Nome, Idade, SiglaPartido) VALUES (16, 'politico', 16, 'Kaleem', 62, 'PP');
INSERT INTO LE08CANDIDATO (NroCand, Tipo, CPF, Nome, Idade, SiglaPartido) VALUES (17, 'politico', 17, 'Filipe', 37, 'PSTU');
INSERT INTO LE08CANDIDATO (NroCand, Tipo, CPF, Nome, Idade, SiglaPartido) VALUES (18, 'politico', 18, 'Jonathan', 38, 'PCB');
INSERT INTO LE08CANDIDATO (NroCand, Tipo, CPF, Nome, Idade, SiglaPartido) VALUES (19, 'politico', 19, 'Alceu', 44, 'PRTB');
INSERT INTO LE08CANDIDATO (NroCand, Tipo, CPF, Nome, Idade, SiglaPartido) VALUES (20, 'politico', 20, 'Jany', 48, 'PHS');
INSERT INTO LE08CANDIDATO (NroCand, Tipo, CPF, Nome, Idade, SiglaPartido) VALUES (21, 'politico', 21, 'Flavia', 52, 'PSDC');
INSERT INTO LE08CANDIDATO (NroCand, Tipo, CPF, Nome, Idade, SiglaPartido) VALUES (22, 'politico', 22, 'Ana', 55, 'PCO');
INSERT INTO LE08CANDIDATO (NroCand, Tipo, CPF, Nome, Idade, SiglaPartido) VALUES (23, 'politico', 23, 'Julio', 62, 'PTN');
INSERT INTO LE08CANDIDATO (NroCand, Tipo, CPF, Nome, Idade, SiglaPartido) VALUES (24, 'politico', 24, 'Garcia', 61, 'PSL');
INSERT INTO LE08CANDIDATO (NroCand, Tipo, CPF, Nome, Idade, SiglaPartido) VALUES (25, 'politico', 25, 'Joao', 60, 'PRB');
INSERT INTO LE08CANDIDATO (NroCand, Tipo, CPF, Nome, Idade, SiglaPartido) VALUES (26, 'politico', 26, 'Francisco', 44, 'PSOL');
INSERT INTO LE08CANDIDATO (NroCand, Tipo, CPF, Nome, Idade, SiglaPartido) VALUES (27, 'politico', 27, 'Luis', 45, 'PR');
INSERT INTO LE08CANDIDATO (NroCand, Tipo, CPF, Nome, Idade, SiglaPartido) VALUES (28, 'politico', 28, 'Lucas', 47, 'PSD');
INSERT INTO LE08CANDIDATO (NroCand, Tipo, CPF, Nome, Idade, SiglaPartido) VALUES (29, 'politico', 29, 'Christian', 56, 'PPL');
INSERT INTO LE08CANDIDATO (NroCand, Tipo, CPF, Nome, Idade, SiglaPartido) VALUES (30, 'politico', 30, 'Marcus', 55, 'PEN');
INSERT INTO LE08CANDIDATO (NroCand, Tipo, CPF, Nome, Idade, SiglaPartido) VALUES (31, 'politico', 31, 'Sergio', 58, 'PROS');
INSERT INTO LE08CANDIDATO (NroCand, Tipo, CPF, Nome, Idade, SiglaPartido) VALUES (32, 'politico', 32, 'Paulo', 50, 'SD');
INSERT INTO LE08CANDIDATO (NroCand, Tipo, CPF, Nome, Idade, SiglaPartido) VALUES (33, 'politico', 33, 'Diego', 81, 'NOVO');
INSERT INTO LE08CANDIDATO (NroCand, Tipo, CPF, Nome, Idade, SiglaPartido) VALUES (34, 'politico', 34, 'Guilherme', 40, 'REDE');
INSERT INTO LE08CANDIDATO (NroCand, Tipo, CPF, Nome, Idade, SiglaPartido) VALUES (35, 'politico', 35, 'Andre', 44, 'PMB');


INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera) VALUES (1, 1, 2014, 4, 'Presidente', 1, 'F');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera) VALUES (2, 0, 2014, 8, 'Senador', 10, 'F');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera) VALUES (3, 0, 2014, 4, 'Deputado Federal', 20, 'F');

INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, SiglaEstado) VALUES (4, 1, 2014, 4, 'Governador', 1, 'E', 'SP');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, SiglaEstado) VALUES (5, 1, 2014, 4, 'Deputado Estadual', 20, 'E', 'SP');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, SiglaEstado) VALUES (6, 1, 2014, 4, 'Governador', 1, 'E', 'SC');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, SiglaEstado) VALUES (7, 1, 2014, 4, 'Deputado Estadual', 20, 'E', 'SC');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, SiglaEstado) VALUES (8, 1, 2014, 4, 'Governador', 1, 'E', 'TO');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, SiglaEstado) VALUES (9, 1, 2014, 4, 'Deputado Estadual', 20, 'E', 'TO');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, SiglaEstado) VALUES (10, 1, 2014, 4, 'Governador', 1, 'E', 'CE');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, SiglaEstado) VALUES (11, 1, 2014, 4, 'Deputado Estadual', 20, 'E', 'CE');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, SiglaEstado) VALUES (12, 1, 2014, 4, 'Governador', 1, 'E', 'AM');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, SiglaEstado) VALUES (13, 1, 2014, 4, 'Deputado Estadual', 20, 'E', 'AM');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, SiglaEstado) VALUES (14, 1, 2014, 4, 'Governador', 1, 'E', 'DF');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, SiglaEstado) VALUES (15, 1, 2014, 4, 'Deputado Estadual', 20, 'E', 'DF');

INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (16, 1, 2014, 4, 'Prefeito', 1, 'M', 'Sao Carlos', 'SP');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (17, 0, 2014, 4, 'Vereador', 30, 'M', 'Sao Carlos', 'SP');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (18, 1, 2014, 4, 'Prefeito', 1, 'M', 'Sao Paulo', 'SP');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (19, 0, 2014, 4, 'Vereador', 30, 'M', 'Sao Paulo', 'SP');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (20, 1, 2014, 4, 'Prefeito', 1, 'M', 'Sao Caetano', 'SP');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (21, 0, 2014, 4, 'Vereador', 30, 'M', 'Sao Caetano', 'SP');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (22, 1, 2014, 4, 'Prefeito', 1, 'M', 'Campinas', 'SP');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (23, 0, 2014, 4, 'Vereador', 30, 'M', 'Campinas', 'SP');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (24, 1, 2014, 4, 'Prefeito', 1, 'M', 'Sao Roque', 'SP');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (25, 0, 2014, 4, 'Vereador', 30, 'M', 'Sao Roque', 'SP');

INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (26, 1, 2014, 4, 'Prefeito', 1, 'M', 'Florianopolis', 'SC');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (27, 0, 2014, 4, 'Vereador', 40, 'M', 'Florianopolis', 'SC');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (28, 1, 2014, 4, 'Prefeito', 1, 'M', 'Fraiburgo', 'SC');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (29, 0, 2014, 4, 'Vereador', 40, 'M', 'Fraiburgo', 'SC');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (30, 1, 2014, 4, 'Prefeito', 1, 'M', 'Joinville', 'SC');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (31, 0, 2014, 4, 'Vereador', 40, 'M', 'Joinville', 'SC');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (32, 1, 2014, 4, 'Prefeito', 1, 'M', 'Blumenau', 'SC');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (33, 0, 2014, 4, 'Vereador', 40, 'M', 'Blumenau', 'SC');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (34, 1, 2014, 4, 'Prefeito', 1, 'M', 'Crisciuma', 'SC');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (35, 0, 2014, 4, 'Vereador', 40, 'M', 'Crisciuma', 'SC');

INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (36, 1, 2014, 4, 'Prefeito', 1, 'M', 'Palmas', 'TO');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (37, 0, 2014, 4, 'Vereador', 20, 'M', 'Palmas', 'TO');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (38, 1, 2014, 4, 'Prefeito', 1, 'M', 'Guaral', 'TO');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (75, 0, 2014, 4, 'Vereador', 20, 'M', 'Guaral', 'TO');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (39, 1, 2014, 4, 'Prefeito', 1, 'M', 'Araguaina', 'TO');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (40, 0, 2014, 4, 'Vereador', 20, 'M', 'Araguaina', 'TO');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (41, 1, 2014, 4, 'Prefeito', 1, 'M', 'Porto Nacional', 'TO');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (42, 0, 2014, 4, 'Vereador', 20, 'M', 'Porto Nacional', 'TO');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (43, 1, 2014, 4, 'Prefeito', 1, 'M', 'Araguatins', 'TO');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (44, 0, 2014, 4, 'Vereador', 20, 'M', 'Araguatins', 'TO');

INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (45, 1, 2014, 4, 'Prefeito', 1, 'M', 'Fortaleza', 'CE');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (46, 0, 2014, 4, 'Vereador', 25, 'M', 'Fortaleza', 'CE');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (47, 1, 2014, 4, 'Prefeito', 1, 'M', 'Caucaia', 'CE');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (48, 0, 2014, 4, 'Vereador', 25, 'M', 'Caucaia', 'CE');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (49, 1, 2014, 4, 'Prefeito', 1, 'M', 'Sobral', 'CE');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (50, 0, 2014, 4, 'Vereador', 25, 'M', 'Sobral', 'CE');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (51, 1, 2014, 4, 'Prefeito', 1, 'M', 'Crato', 'CE');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (52, 0, 2014, 4, 'Vereador', 25, 'M', 'Crato', 'CE');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (53, 1, 2014, 4, 'Prefeito', 1, 'M', 'Juazeiro do Norte', 'CE');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (54, 0, 2014, 4, 'Vereador', 25, 'M', 'Juazeiro do Norte', 'CE');

INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (55, 1, 2014, 4, 'Prefeito', 1, 'M', 'Manaus', 'AM');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (56, 0, 2014, 4, 'Vereador', 45, 'M', 'Manaus', 'AM');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (57, 1, 2014, 4, 'Prefeito', 1, 'M', 'Parintins', 'AM');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (58, 0, 2014, 4, 'Vereador', 45, 'M', 'Parintins', 'AM');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (59, 1, 2014, 4, 'Prefeito', 1, 'M', 'Humaita', 'AM');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (60, 0, 2014, 4, 'Vereador', 45, 'M', 'Humaita', 'AM');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (61, 1, 2014, 4, 'Prefeito', 1, 'M', 'Coari', 'AM');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (62, 0, 2014, 4, 'Vereador', 45, 'M', 'Coari', 'AM');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (63, 1, 2014, 4, 'Prefeito', 1, 'M', 'Maues', 'AM');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (64, 0, 2014, 4, 'Vereador', 45, 'M', 'Maues', 'AM');

INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (65, 1, 2014, 4, 'Prefeito', 1, 'M', 'Brasilia', 'DF');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (66, 0, 2014, 4, 'Vereador', 39, 'M', 'Brasilia', 'DF');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (67, 1, 2014, 4, 'Prefeito', 1, 'M', 'Gama', 'DF');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (68, 0, 2014, 4, 'Vereador', 39, 'M', 'Gama', 'DF');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (69, 1, 2014, 4, 'Prefeito', 1, 'M', 'Ceilandia', 'DF');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (70, 0, 2014, 4, 'Vereador', 39, 'M', 'Ceilandia', 'DF');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (71, 1, 2014, 4, 'Prefeito', 1, 'M', 'Taguatinga', 'DF');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (72, 0, 2014, 4, 'Vereador', 39, 'M', 'Taguatinga', 'DF');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (73, 1, 2014, 4, 'Prefeito', 1, 'M', 'Sobradinho', 'DF');
INSERT INTO LE09CARGO (CodCargo, PossuiVice, AnoBase, AnosMandato, NomeDescritivo, NroDeCadeiras, Esfera, NomeCidade, SiglaEstado) VALUES (74, 0, 2014, 4, 'Vereador', 39, 'M', 'Sobradinho', 'DF');

INSERT INTO LE10CANDIDATURA (Reg, CodCargo, Ano, NroCand) VALUES (1, 1, 2014, 0);
INSERT INTO LE10CANDIDATURA (Reg, CodCargo, Ano, NroCand) VALUES (2, 2, 2014, 0);
INSERT INTO LE10CANDIDATURA (Reg, CodCargo, Ano, NroCand) VALUES (3, 3, 2014, 0);
INSERT INTO LE10CANDIDATURA (Reg, CodCargo, Ano, NroCand) VALUES (4, 4, 2014, 0);
INSERT INTO LE10CANDIDATURA (Reg, CodCargo, Ano, NroCand) VALUES (5, 5, 2014, 0);
INSERT INTO LE10CANDIDATURA (Reg, CodCargo, Ano, NroCand) VALUES (6, 16, 2014, 0);
INSERT INTO LE10CANDIDATURA (Reg, CodCargo, Ano, NroCand) VALUES (7, 17, 2014, 0);
INSERT INTO LE10CANDIDATURA (Reg, CodCargo, Ano, NroCand) VALUES (8, 18, 2014, 0);
INSERT INTO LE10CANDIDATURA (Reg, CodCargo, Ano, NroCand) VALUES (9, 19, 2014, 0);

INSERT INTO LE10CANDIDATURA (Reg, CodCargo, Ano, NroCand) VALUES (10, 1, 2014, -1);
INSERT INTO LE10CANDIDATURA (Reg, CodCargo, Ano, NroCand) VALUES (11, 2, 2014, -1);
INSERT INTO LE10CANDIDATURA (Reg, CodCargo, Ano, NroCand) VALUES (12, 3, 2014, -1);
INSERT INTO LE10CANDIDATURA (Reg, CodCargo, Ano, NroCand) VALUES (13, 4, 2014, -1);
INSERT INTO LE10CANDIDATURA (Reg, CodCargo, Ano, NroCand) VALUES (14, 5, 2014, -1);
INSERT INTO LE10CANDIDATURA (Reg, CodCargo, Ano, NroCand) VALUES (15, 16, 2014, -1);
INSERT INTO LE10CANDIDATURA (Reg, CodCargo, Ano, NroCand) VALUES (16, 17, 2014, -1);
INSERT INTO LE10CANDIDATURA (Reg, CodCargo, Ano, NroCand) VALUES (17, 18, 2014, -1);
INSERT INTO LE10CANDIDATURA (Reg, CodCargo, Ano, NroCand) VALUES (18, 19, 2014, -1);


INSERT INTO LE10CANDIDATURA (Reg, CodCargo, Ano, NroCand, NroVice) VALUES (19, 1, 2014, 1, 10);
INSERT INTO LE10CANDIDATURA (Reg, CodCargo, Ano, NroCand, NroVice) VALUES (20, 2, 2014, 2, 11);
INSERT INTO LE10CANDIDATURA (Reg, CodCargo, Ano, NroCand, NroVice) VALUES (21, 3, 2014, 3, 12);
INSERT INTO LE10CANDIDATURA (Reg, CodCargo, Ano, NroCand, NroVice) VALUES (22, 4, 2014, 4, 13);
INSERT INTO LE10CANDIDATURA (Reg, CodCargo, Ano, NroCand, NroVice) VALUES (23, 5, 2014, 5, 14);
INSERT INTO LE10CANDIDATURA (Reg, CodCargo, Ano, NroCand, NroVice) VALUES (24, 16, 2014, 6, 15);
INSERT INTO LE10CANDIDATURA (Reg, CodCargo, Ano, NroCand, NroVice) VALUES (25, 17, 2014, 7, 16);
INSERT INTO LE10CANDIDATURA (Reg, CodCargo, Ano, NroCand, NroVice) VALUES (26, 18, 2014, 8, 17);
INSERT INTO LE10CANDIDATURA (Reg, CodCargo, Ano, NroCand, NroVice) VALUES (27, 19, 2014, 9, 18);


INSERT INTO LE11PLEITO (NroSessao, NroZona,CodCargo,Ano,NroCand) VALUES (1, 1, 1, 2014, 1);
INSERT INTO LE11PLEITO (NroSessao, NroZona,CodCargo,Ano,NroCand) VALUES (2, 2, 2, 2014, 2);
INSERT INTO LE11PLEITO (NroSessao, NroZona,CodCargo,Ano,NroCand) VALUES (3, 3, 3, 2014, 3);
INSERT INTO LE11PLEITO (NroSessao, NroZona,CodCargo,Ano,NroCand) VALUES (4, 4, 4, 2014, 4);
INSERT INTO LE11PLEITO (NroSessao, NroZona,CodCargo,Ano,NroCand) VALUES (5, 5, 5, 2014, 5);
INSERT INTO LE11PLEITO (NroSessao, NroZona,CodCargo,Ano,NroCand) VALUES (6, 6, 16, 2014, 6);
INSERT INTO LE11PLEITO (NroSessao, NroZona,CodCargo,Ano,NroCand) VALUES (7, 7, 17, 2014, 7);
INSERT INTO LE11PLEITO (NroSessao, NroZona,CodCargo,Ano,NroCand) VALUES (8, 8, 18, 2014, 8);
INSERT INTO LE11PLEITO (NroSessao, NroZona,CodCargo,Ano,NroCand) VALUES (9, 9, 19, 2014, 9);

INSERT INTO LE11PLEITO (NroSessao, NroZona,CodCargo,Ano,NroCand) VALUES (1, 1, 1, 2014, 0);
INSERT INTO LE11PLEITO (NroSessao, NroZona,CodCargo,Ano,NroCand) VALUES (2, 2, 2, 2014, 0);
INSERT INTO LE11PLEITO (NroSessao, NroZona,CodCargo,Ano,NroCand) VALUES (3, 3, 3, 2014, 0);
INSERT INTO LE11PLEITO (NroSessao, NroZona,CodCargo,Ano,NroCand) VALUES (4, 4, 4, 2014, 0);
INSERT INTO LE11PLEITO (NroSessao, NroZona,CodCargo,Ano,NroCand) VALUES (5, 5, 5, 2014, 0);
INSERT INTO LE11PLEITO (NroSessao, NroZona,CodCargo,Ano,NroCand) VALUES (6, 6, 16, 2014, 0);
INSERT INTO LE11PLEITO (NroSessao, NroZona,CodCargo,Ano,NroCand) VALUES (7, 7, 17, 2014, 0);
INSERT INTO LE11PLEITO (NroSessao, NroZona,CodCargo,Ano,NroCand) VALUES (8, 8, 18, 2014, 0);
INSERT INTO LE11PLEITO (NroSessao, NroZona,CodCargo,Ano,NroCand) VALUES (9, 9, 19, 2014, 0);

INSERT INTO LE11PLEITO (NroSessao, NroZona, CodCargo,Ano,NroCand) VALUES (1, 1, 1, 2014, -1);
INSERT INTO LE11PLEITO (NroSessao, NroZona, CodCargo,Ano,NroCand) VALUES (2, 2, 2, 2014, -1);
INSERT INTO LE11PLEITO (NroSessao, NroZona, CodCargo,Ano,NroCand) VALUES (3, 3, 3, 2014, -1);
INSERT INTO LE11PLEITO (NroSessao, NroZona, CodCargo,Ano,NroCand) VALUES (4, 4, 4, 2014, -1);
INSERT INTO LE11PLEITO (NroSessao, NroZona, CodCargo,Ano,NroCand) VALUES (5, 5, 5, 2014, -1);
INSERT INTO LE11PLEITO (NroSessao, NroZona, CodCargo,Ano,NroCand) VALUES (6, 6, 16, 2014, -1);
INSERT INTO LE11PLEITO (NroSessao, NroZona, CodCargo,Ano,NroCand) VALUES (7, 7, 17, 2014, -1);
INSERT INTO LE11PLEITO (NroSessao, NroZona, CodCargo,Ano,NroCand) VALUES (8, 8, 18, 2014, -1);
INSERT INTO LE11PLEITO (NroSessao, NroZona, CodCargo,Ano,NroCand) VALUES (9, 9, 19, 2014, -1);


INSERT INTO LE12PESQUISA (RegPesquisa, PeriodoInicio, PeriodoFim, OrgaoPesquisa) VALUES (1, (TO_DATE('2016/03/05 00:00:00', 'yyyy/mm/dd hh24:mi:ss')), (TO_DATE('2016/03/15 00:00:00', 'yyyy/mm/dd hh24:mi:ss')), 'IBOPE');
INSERT INTO LE12PESQUISA (RegPesquisa, PeriodoInicio, PeriodoFim, OrgaoPesquisa) VALUES (2, (TO_DATE('2016/12/03 00:00:00', 'yyyy/mm/dd hh24:mi:ss')), (TO_DATE('2016/12/23 00:00:00', 'yyyy/mm/dd hh24:mi:ss')), 'IBOPE');
INSERT INTO LE12PESQUISA (RegPesquisa, PeriodoInicio, PeriodoFim, OrgaoPesquisa) VALUES (3, (TO_DATE('2015/05/03 00:00:00', 'yyyy/mm/dd hh24:mi:ss')), (TO_DATE('2015/05/04 00:00:00', 'yyyy/mm/dd hh24:mi:ss')), 'DATAFOLHA');
INSERT INTO LE12PESQUISA (RegPesquisa, PeriodoInicio, PeriodoFim, OrgaoPesquisa) VALUES (4, (TO_DATE('2016/05/23 00:00:00', 'yyyy/mm/dd hh24:mi:ss')), (TO_DATE('2016/06/04 00:00:00', 'yyyy/mm/dd hh24:mi:ss')), 'DATAFOLHA');
INSERT INTO LE12PESQUISA (RegPesquisa, PeriodoInicio, PeriodoFim, OrgaoPesquisa) VALUES (5, (TO_DATE('2016/02/01 00:00:00', 'yyyy/mm/dd hh24:mi:ss')), (TO_DATE('2016/02/10 00:00:00', 'yyyy/mm/dd hh24:mi:ss')), 'IBOPE');
INSERT INTO LE12PESQUISA (RegPesquisa, PeriodoInicio, PeriodoFim, OrgaoPesquisa) VALUES (6, (TO_DATE('2015/08/03 00:00:00', 'yyyy/mm/dd hh24:mi:ss')), (TO_DATE('2015/08/20 00:00:00', 'yyyy/mm/dd hh24:mi:ss')), 'DATAFOLHA');
INSERT INTO LE12PESQUISA (RegPesquisa, PeriodoInicio, PeriodoFim, OrgaoPesquisa) VALUES (7, (TO_DATE('2016/01/01 00:00:00', 'yyyy/mm/dd hh24:mi:ss')), (TO_DATE('2016/01/04 00:00:00', 'yyyy/mm/dd hh24:mi:ss')), 'IBOPE');
INSERT INTO LE12PESQUISA (RegPesquisa, PeriodoInicio, PeriodoFim, OrgaoPesquisa) VALUES (8, (TO_DATE('2014/09/10 00:00:00', 'yyyy/mm/dd hh24:mi:ss')), (TO_DATE('2014/09/20 00:00:00', 'yyyy/mm/dd hh24:mi:ss')), 'DATAFOLHA');
INSERT INTO LE12PESQUISA (RegPesquisa, PeriodoInicio, PeriodoFim, OrgaoPesquisa) VALUES (9, (TO_DATE('2016/03/03 00:00:00', 'yyyy/mm/dd hh24:mi:ss')), (TO_DATE('2016/03/07 00:00:00', 'yyyy/mm/dd hh24:mi:ss')), 'IBOPE');
INSERT INTO LE12PESQUISA (RegPesquisa, PeriodoInicio, PeriodoFim, OrgaoPesquisa) VALUES (10, (TO_DATE('2014/02/03 00:00:00', 'yyyy/mm/dd hh24:mi:ss')), (TO_DATE('2014/02/06 00:00:00', 'yyyy/mm/dd hh24:mi:ss')), 'DATAFOLHA');

INSERT INTO LE13INTENCAODEVOTO (RegPesquisa, RegCandid, Total) VALUES (1, 19, 100);
INSERT INTO LE13INTENCAODEVOTO (RegPesquisa, RegCandid, Total) VALUES (2, 20, 90);
INSERT INTO LE13INTENCAODEVOTO (RegPesquisa, RegCandid, Total) VALUES (3, 21, 80);
INSERT INTO LE13INTENCAODEVOTO (RegPesquisa, RegCandid, Total) VALUES (4, 22, 70);
INSERT INTO LE13INTENCAODEVOTO (RegPesquisa, RegCandid, Total) VALUES (5, 23, 60);
INSERT INTO LE13INTENCAODEVOTO (RegPesquisa, RegCandid, Total) VALUES (6, 24, 99);
INSERT INTO LE13INTENCAODEVOTO (RegPesquisa, RegCandid, Total) VALUES (7, 25, 101);
INSERT INTO LE13INTENCAODEVOTO (RegPesquisa, RegCandid, Total) VALUES (8, 26, 102);

INSERT INTO LE13INTENCAODEVOTO (RegPesquisa, RegCandid, Total) VALUES (1, 1, 1002);
INSERT INTO LE13INTENCAODEVOTO (RegPesquisa, RegCandid, Total) VALUES (2, 2, 1005);
INSERT INTO LE13INTENCAODEVOTO (RegPesquisa, RegCandid, Total) VALUES (3, 3, 1006);
INSERT INTO LE13INTENCAODEVOTO (RegPesquisa, RegCandid, Total) VALUES (4, 4, 1008);
INSERT INTO LE13INTENCAODEVOTO (RegPesquisa, RegCandid, Total) VALUES (5, 5, 1005);
INSERT INTO LE13INTENCAODEVOTO (RegPesquisa, RegCandid, Total) VALUES (6, 6, 1031);
INSERT INTO LE13INTENCAODEVOTO (RegPesquisa, RegCandid, Total) VALUES (7, 7, 1002);
INSERT INTO LE13INTENCAODEVOTO (RegPesquisa, RegCandid, Total) VALUES (8, 8, 1000);
