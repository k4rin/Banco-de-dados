CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_produtos(
 id BIGINT AUTO_INCREMENT NOT NULL,
nome VARCHAR(255) NOT NULL,
preco DECIMAL(6,2) NOT NULL,
quantidade INT,
cor VARCHAR(255),
PRIMARY KEY(id)
);
INSERT INTO tb_produtos(nome, preco, quantidade, cor)
VALUES ("mouse", 49.80, 12, "preto"),
("notebook", 2600.69, 89, "preto"),
("Samsung s24", 4000.86, 111, "grafite"),
("garrafa termica", 49.90, 56, "lilás"),
("fone", 49.90, 56, "preto"),
("tv", 2800.99, 98, "preto"),
("mesa", 400, 36, "branco"),
("cadeira ergonomica", 800, 149, "preto");

SELECT * FROM tb_produtos 	WHERE preco> 500;
SELECT * FROM tb_produtos 	WHERE preco < 500;

UPDATE tb_produtos SET preco = 2300 WHERE id=6;

SELECT * FROM tb_produtos;