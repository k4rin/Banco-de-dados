CREATE DATABASE db_registrorh;

USE  db_resgistrorh;

CREATE TABLE tb_colaboradores(
id BIGINT AUTO_INCREMENT NOT NULL,
nome VARCHAR(255) NOT NULL,
salario DECIMAL(6,2) NOT NULL,
cpf INT,
admissao DATE,
PRIMARY KEY(id)
);
INSERT INTO tb_colaboradores(nome, salario, cpf, admissao)
VALUES ("José da Silva", 1500.90, 12, "2023-01-13"),
("Maria Pereira", 2600, 89, "2025-09-25"),
("Karine Santos", 2500.86, 111, "2024-04-08"),
("Helen Maria", 1418.68, 121, "2023-08-03"),
("Joice Aparecida", 1800, 149, "2024-11-28");

SELECT * FROM tb_colaboradores 	WHERE salario> 2000;
SELECT * FROM tb_colaboradores 	WHERE salario< 2000;

UPDATE tb_colaboradores SET salario = 2300 WHERE id=5;

SELECT * FROM tb_colaboradores;






