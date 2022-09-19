DROP DATABASE IF EXISTS Cadastro;
CREATE DATABASE IF NOT EXISTS Cadastro;
USE Cadastro;

DROP TABLE IF EXISTS Cursos;

CREATE TABLE Cursos (
  idCurso INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nome varchar(30) NOT NULL UNIQUE KEY,
  descricao text,
  carga int(10) unsigned DEFAULT NULL,
  totaulas int(10) unsigned DEFAULT NULL,
  ano year(4) DEFAULT '2016'
) DEFAULT CHARSET = utf8;

LOCK TABLES Cursos WRITE;

INSERT INTO Cursos VALUES
(1,'HTML5','Curso de HTML5',40,37,2014),
(2,'Algoritmos','Lógica de Programação',20,15,2014),
(3,'Photoshop5','Dicas de Photoshop CC',10,8,2014),
(4,'PHP','Curso de PHP para iniciantes',40,20,2015),
(5,'Java','Introdução à Linguagem Java',40,29,2015),
(6,'MySQL','Bancos de Dados MySQL',30,15,2016),
(7,'Word','Curso completo de Word',40,30,2016),
(8,'Python','Curso de Python',40,18,2017),
(9,'POO','Curso de Programação Orientada a Objetos',60,35,2016),
(10,'Excel','Curso completo de Excel',40,30,2017),
(11,'Responsividade','Curso de Responsividade',30,15,2018),
(12,'C++','Curso de C++ com Orientação a Objetos',40,25,2017),
(13,'C#','Curso de C#',30,12,2017),
(14,'Android','Curso de Desenvolvimento de Aplicativos para Android',60,30,2018),
(15,'JavaScript','Curso de JavaScript',35,18,2017),
(16,'PowerPoint','Curso completo de PowerPoint',30,12,2018),
(17,'Swift','Curso de Desenvolvimento de Aplicativos para iOS',60,30,2019),
(18,'Hardware','Curso de Montagem e Manutenção de PCs',30,12,2017),
(19,'Redes','Curso de Redes para Iniciantes',40,15,2016),
(20,'Segurança','Curso de Segurança',15,8,2018),
(21,'SEO','Curso de Otimização de Sites',30,12,2017),
(22,'Premiere','Curso de Edição de Vídeos com Premiere',20,10,2017),
(23,'After Effects','Curso de Efeitos em Vídeos com After Effects',20,10,2018),
(24,'WordPress','Curso de Criação de Sites com WordPress',60,30,2019),
(25,'Joomla','Curso de Criação de Sites com Joomla',60,30,2019),
(26,'Magento','Curso de Criação de Lojas Virtuais com Magento',50,25,2019),
(27,'Modelagem de Dados','Curso de Modelagem de Dados',30,12,2020),
(28,'HTML4','Curso Básico de HTML, versão 4.0',20,9,2010),
(29,'PHP7','Curso de PHP, versão 7.0',40,20,2020),
(30,'PHP4','Curso de PHP, versão 4.0',30,11,2010);


UNLOCK TABLES;

DROP TABLE IF EXISTS Gafanhotos;

CREATE TABLE Gafanhotos (
  idGafanhotos INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nome varchar(30) NOT NULL,
  profissao varchar(20) DEFAULT NULL,
  nascimento date DEFAULT NULL,
  sexo enum('M','F') DEFAULT NULL,
  peso decimal(5,2) DEFAULT NULL,
  altura decimal(3,2) DEFAULT NULL,
  nacionalidade varchar(20) DEFAULT 'Brasil'
) DEFAULT CHARSET = utf8;


UNLOCK TABLES;

USE Cadastro;

/*
Funções Agregadas:

MIN = Valor Mínimo;
MAX = Valor Máximo;
AVG = Média Aritmética;
SUM = Total(soma); 
COUNT = Contar quantidade de itens. 
*/


SELECT count(nome) FROM Cursos;

SELECT count(c.carga) AS 'Número de cargas horárias'
FROM Cursos c
WHERE ano
BETWEEN '2018-01-01' AND '2022-12-31';

SELECT c.nome, max(c.carga) AS 'Maior carga horária'
FROM Cursos c
WHERE ano = '2014';

SELECT c.nome, min(c.carga) AS 'Menor carga horária'
FROM Cursos c
WHERE ano = '2014';

SELECT sum(c.carga) AS 'Soma das cargas horárias'
FROM Cursos c;

SELECT avg(c.carga) AS 'Média das cargas horárias'
FROM Cursos c;

SELECT concat((lower(c.nome)), (lower(c.descricao))) AS 'Letras minúsculas'
FROM Cursos c;

SELECT upper(c.nome) AS 'Letras maiúsculas'
FROM Cursos c;

SELECT sum(carga) FROM Cursos;

SELECT max(carga) FROM Cursos;

SELECT length(c.nome)
FROM Cursos c
ORDER BY ano;

/*
Funções Agregadas:

MIN = Valor Mínimo;
MAX = Valor Máximo;
AVG = Média Aritmética;
SUM = Total(soma); 
COUNT = Contar quantidade de itens. 
*/

USE Cadastro;

-- Conta o número de vezes que a expressão avalia algum dado com valor não nulo. A opção "*" conta todas as filas selecionadas.
SELECT count(*) AS 'Filas Selecionadas'
FROM Cursos c;

SELECT count(c.idCurso) AS 'Quantidade de Cursos'
FROM Cursos c;

SELECT max(c.carga) AS 'Maior Carga Horária'
FROM Cursos c;

SELECT min(c.carga) AS 'Menor Carga Horária'
FROM Cursos c;

SELECT sum(c.totaulas) AS 'Soma do Total de Aulas'
FROM Cursos c;

SELECT avg(c.totaulas) AS 'Média do Total de Aulas'
FROM Cursos c;