CREATE DATABASE db_escola;
USE de_escola;

CREATE TABLE tb_alunos(
 id BIGINT AUTO_INCREMENT NOT NULL,
nome VARCHAR(255) NOT NULL,
matricula INT ,
nota DECIMAL(2,1) NOT NULL,
turno VARCHAR(255),
PRIMARY KEY(id)
);

INSERT INTO tb_alunos(nome, matricula, nota, turno)
VALUES ("Kaiki", 49, 9.0, "manhã"),
("Joice", 13, 8.5, "tarde"),
("Maria", 4, 4.0, "noite"),
("Rafael", 43, 5.6, "tarde"),
("Raul", 34, 7.0, "manhã"),
("Anna", 29, 9.8, "manhã"),
("Camilla", 40, 3.6, "tarde"),
("Fernando", 8, 8.9, "noite");

SELECT * FROM tb_alunos WHERE nota > 7;
SELECT * FROM tb_alunos WHERE nota < 7;

UPDATE tb_alunos SET nota = 8.0 WHERE id = 3;

SELECT * FROM tb_alunos;