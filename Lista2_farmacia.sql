/*Crie um banco de dados para um serviço de uma Farmácia.
O nome do Banco de dados deverá ter o seguinte nome db_farmacia_bem_estar.
O sistema trabalhará com as informações dos produtos comercializados pela empresa.
O sistema trabalhará com 2 tabelas tb_produtos e tb_categorias, que deverão estar relacionadas.*/

CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id BIGINT PRIMARY KEY AUTO_INCREMENT NOT NULL,
categoria VARCHAR(255) NOT NULL,
prioridade INT
);

CREATE TABLE tb_produtos (
id BIGINT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nome  VARCHAR(255) NOT NULL,
quantidade INT,
preco DECIMAL(6,2) NOT NULL,
id_categoria BIGINT,
FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

/*Insira 5 registros na tabela tb_categorias.*/
INSERT INTO tb_categorias (categoria, prioridade) 
VALUES
('Medicamentos', 1),
( 'Higiene Pessoal', 2),
( 'Suplementos', 3),
( 'Dermocosméticos', 4),
( 'Bebês e Crianças', 5);

/*Insira 8 registros na tabela tb_produtos,
 preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.*/
INSERT INTO tb_produtos ( nome, quantidade, preco, id_categoria)
 VALUES
( 'Paracetamol 500mg', 120,9.50, 1),
( 'Amaciante Suave', 50, 15.00, 2),
('Vitamina C 500mg',  80, 25.00, 3),
( 'Protetor Solar FPS 50', 60, 40.00, 4),
( 'Fralda G', 200, 80.00, 5),
( 'Ibuprofeno 400mg', 100, 12.00, 1),
( 'Shampoo Anticaspa', 75, 18.50, 2),
( 'Omega 3 1000mg', 90, 30.00, 3);

/*Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 50,00*/
SELECT * FROM tb_produtos WHERE preco > 50.00;

/*Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 5,00 e R$ 60,00.*/
SELECT * FROM tb_produtos WHERE preco > 5.00 AND preco < 60.00;

/*Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome.*/
SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

/*Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos
 com os dados da tabela tb_categorias.*/
 SELECT * FROM
tb_produtos INNER JOIN tb_categorias
ON tb_produtos.id_categoria = tb_categorias.id;

/*Faça um SELECT utilizando a cláusula INNER JOIN, 
unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias, 
onde traga apenas os produtos que pertençam a uma categoria específica 
(Exemplo: Todes os produtos que pertencem a categoria cosméticos).*/

SELECT nome, quantidade, preco, categoria FROM
tb_produtos INNER JOIN tb_categorias
ON tb_produtos.id_categoria = tb_categorias.id
 WHERE categoria LIKE "Medicamentos";
