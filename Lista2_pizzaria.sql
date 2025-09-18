/* Crie um banco de dados para um serviço de uma Pizzaria. 
O nome do Banco de dados deverá ter o seguinte nome db_pizzaria_legal. O sistema trabalhará 
com as informações dos produtos comercializados pela empresa.
O sistema trabalhará com 2 tabelas tb_pizzas e tb_categorias, que deverão estar relacionadas.*/

CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id BIGINT PRIMARY KEY AUTO_INCREMENT NOT NULL,
categoria VARCHAR(255) NOT NULL,
tipo VARCHAR(255) NOT NULL
);

CREATE TABLE tb_pizzas (
id BIGINT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nome  VARCHAR(255) NOT NULL,
tamanho VARCHAR(255),
preco DECIMAL(6,2) NOT NULL,
id_categoria BIGINT,
FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);


INSERT INTO tb_categorias (categoria, tipo)
 VALUES
('Tradicionais', 'Salgada'),
('Especiais', 'Salgada'),
( 'Premium', 'Salgada'),
( 'Doces', 'Doce'),
( 'Veganas', 'Salgada');

INSERT INTO tb_pizzas (nome, tamanho, preco, id_categoria)
 VALUES
('Calabresa', 'Média', 45.90, 1),
('Portuguesa', 'Grande', 62.50, 1),
( 'Frango com Catupiry', 'Média', 52.00, 2),
( 'Quatro Queijos', 'Grande', 65.00, 2),
('Camarão Especial', 'Grande', 79.90, 3),
( 'Chocolate com Morango', 'Média', 48.00, 4),
( 'Banana com Canela', 'Pequena', 32.90, 4),
( 'Vegana de Legumes', 'Média', 49.90, 5);

/*Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00.*/
SELECT * FROM tb_pizzas WHERE preco > 45.00;

/*Faça um SELECT que retorne todas as pizzas cujo valor 
esteja no intervalo R$ 50,00 e R$ 100,00.*/
SELECT * FROM tb_pizzas WHERE preco > 50.00 AND preco < 100.00;

/*Faça um SELECT utilizando o operador LIKE, 
buscando todas as pizzas que possuam a letra M no atributo nome.*/
SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";

/*Faça um SELECT utilizando a cláusula INNER JOIN, 
unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias.*/

SELECT * FROM
tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.id_categoria = tb_categorias.id;

/*Faça um SELECT utilizando a cláusula INNER JOIN,
unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias,
onde traga apenas as pizzas que pertençam a uma categoria específica (Exemplo: Todas as pizzas que são doce).*/
SELECT nome, tamanho, preco, tipo FROM
tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.id_categoria = tb_categorias.id
 WHERE tipo LIKE "Salgada";
