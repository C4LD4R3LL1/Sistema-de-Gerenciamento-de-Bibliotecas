#Script Criação Banco de Dados
CREATE TABLE LIVRO (
    ID_LIVRO NUMERIC(5) PRIMARY KEY,
    TITULO VARCHAR(80),
    DATA_PUBLICACAO DATE,
    GENERO VARCHAR(20),
    ID_SITUACAO NUMERIC(5));
CREATE TABLE AUTOR (
    ID_AUTOR NUMERIC(5) PRIMARY KEY,
    NOME_AUTOR VARCHAR(80),
    DATA_NASCIMENTO DATE);
CREATE TABLE ESCRITA (
    ID_LIVRO NUMERIC(5),
    ID_AUTOR NUMERIC(5),
    ID_ESCRITA NUMERIC(5) PRIMARY KEY);
CREATE TABLE SITUACAO (
    ID_SITUACAO NUMERIC(5) PRIMARY KEY,
    NOME_SITUACAO VARCHAR(80));

ALTER TABLE LIVRO
ADD CONSTRAINT FK_LIVRO_SITUACAO
FOREIGN KEY (ID_SITUACAO)
REFERENCES SITUACAO(ID_SITUACAO)
ON DELETE RESTRICT;

ALTER TABLE ESCRITA
ADD CONSTRAINT FK_ESCRITA_LIVRO
FOREIGN KEY (ID_LIVRO)
REFERENCES LIVRO(ID_LIVRO)
ON DELETE RESTRICT;

ALTER TABLE ESCRITA
ADD CONSTRAINT FK_ESCRITA_AUTOR
FOREIGN KEY (ID_AUTOR)
REFERENCES AUTOR(ID_AUTOR)
ON DELETE RESTRICT;

#Script para inserir Autor
INSERT INTO `atividade`.`autor` (`ID_AUTOR`, `NOME_AUTOR`, `DATA_NASCIMENTO`) VALUES ('1',"Antoine de Saint-Exupéry",'1900-07-29');

INSERT INTO `atividade`.`autor` (`ID_AUTOR`, `NOME_AUTOR`, `DATA_NASCIMENTO`) VALUES ('2', 'Rick Riordan', '1964-06-05');

INSERT INTO `atividade`.`autor` (`ID_AUTOR`, `NOME_AUTOR`, `DATA_NASCIMENTO`) VALUES ('3', 'Ziraldo Alves Pinto', '1932-10-24');

INSERT INTO `atividade`.`autor` (`ID_AUTOR`, `NOME_AUTOR`, `DATA_NASCIMENTO`) VALUES ('4', 'David Leavitt', '1961-06-23');

INSERT INTO `atividade`.`autor` (`ID_AUTOR`, `NOME_AUTOR`, `DATA_NASCIMENTO`) VALUES ('5', 'James Gosling', '1955-05-19');

INSERT INTO `atividade`.`autor` (`ID_AUTOR`, `NOME_AUTOR`, `DATA_NASCIMENTO`) VALUES ('6', 'Billy Graham', '1918-11-07');

#Script para inserir Situação
INSERT INTO `atividade`.`situacao` (`ID_SITUACAO`, `NOME_SITUACAO`) VALUES ('1', 'Disponivel');

INSERT INTO `atividade`.`situacao` (`ID_SITUACAO`, `NOME_SITUACAO`) VALUES ('2', 'Indisponivel');

INSERT INTO `atividade`.`situacao` (`ID_SITUACAO`, `NOME_SITUACAO`) VALUES ('3', 'Conserto');

#Script para inserir Livros
INSERT INTO `atividade`.`livro` (`ID_LIVRO`, `TITULO`, `DATA_PUBLICACAO`, `GENERO`, `ID_SITUACAO`) VALUES ('1', 'O Pequeno Príncipe', '1943-4-06', 'Fabula', '1');

INSERT INTO `atividade`.`livro` (`ID_LIVRO`, `TITULO`, `DATA_PUBLICACAO`, `GENERO`, `ID_SITUACAO`) VALUES ('2', 'O Ladrão de Raios', '2005-06-28', 'Mitologia grega', '2');

INSERT INTO `atividade`.`livro` (`ID_LIVRO`, `TITULO`, `DATA_PUBLICACAO`, `GENERO`, `ID_SITUACAO`) VALUES ('3', 'O Menino Maluquinho', '1980-01-01', 'Ficcao', '3');

INSERT INTO `atividade`.`livro` (`ID_LIVRO`, `TITULO`, `DATA_PUBLICACAO`, `GENERO`, `ID_SITUACAO`) VALUES ('4', 'O Homem que sabia demais', '2006-01-01', 'Biografia', '1');

INSERT INTO `atividade`.`livro` (`ID_LIVRO`, `TITULO`, `DATA_PUBLICACAO`, `GENERO`, `ID_SITUACAO`) VALUES ('5', 'A interface de programação de aplicativos Java™', '1996-05-29', 'Programacao','2');

INSERT INTO `atividade`.`LIVRO` (`ID_LIVRO`, `TITULO`, `DATA_PUBLICACAO`, `GENERO`, `ID_SITUACAO`) VALUES ('6', 'Paz com Deus', '1953-11-30', 'Literatura crista', '1')

INSERT INTO `atividade`.`LIVRO` (`ID_LIVRO`, `TITULO`, `DATA_PUBLICACAO`, `GENERO`, `ID_SITUACAO`) VALUES ('7', 'Billy Graham - Uma Autobiografia', '1997-04-01', 'Literatura crista', '1');

INSERT INTO `atividade`.`LIVRO` (`ID_LIVRO`, `TITULO`, `DATA_PUBLICACAO`, `GENERO`, `ID_SITUACAO`) VALUES ('8', 'A razão da minha esperança', '2018-03-16', 'Literatura crista', '2');

#Script para inserir Escrita
INSERT INTO `atividade`.`ESCRITA` (`ID_LIVRO`, `ID_AUTOR`, `ID_ESCRITA`) VALUES ('1', '1', '1');

INSERT INTO `atividade`.`ESCRITA` (`ID_LIVRO`, `ID_AUTOR`, `ID_ESCRITA`) VALUES ('2', '2', '2');

INSERT INTO `atividade`.`ESCRITA` (`ID_LIVRO`, `ID_AUTOR`, `ID_ESCRITA`) VALUES ('3', '3', '3');

INSERT INTO `atividade`.`ESCRITA` (`ID_LIVRO`, `ID_AUTOR`, `ID_ESCRITA`) VALUES ('4', '4', '4');

INSERT INTO `atividade`.`ESCRITA` (`ID_LIVRO`, `ID_AUTOR`, `ID_ESCRITA`) VALUES ('5', '5', '5');

INSERT INTO `atividade`.`ESCRITA` (`ID_LIVRO`, `ID_AUTOR`, `ID_ESCRITA`) VALUES ('6', '6', '6');

INSERT INTO `atividade`.`ESCRITA` (`ID_LIVRO`, `ID_AUTOR`, `ID_ESCRITA`) VALUES ('7', '6', '7');

INSERT INTO `atividade`.`ESCRITA` (`ID_LIVRO`, `ID_AUTOR`, `ID_ESCRITA`) VALUES ('8', '6', '8');


