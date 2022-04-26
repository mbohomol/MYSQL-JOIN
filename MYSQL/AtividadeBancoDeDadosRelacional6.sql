CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

CREATE TABLE  tb_categorias(
id BIGINT auto_increment not null PRIMARY KEY,
unidade VARCHAR(30) NOT NULL
);

CREATE TABLE tb_cursos(
nome VARCHAR(30) NOT NULL,
valor BIGINT,
quantidade_alunos BIGINT,
id_categorias BIGINT
);

INSERT INTO tb_categorias (id,curso) VALUES (1,"A");
INSERT INTO tb_categorias (id,curso) VALUES (2,"B");
INSERT INTO tb_categorias (id,curso) VALUES (3,"C");
INSERT INTO tb_categorias (id,curso) VALUES (4,"D");
INSERT INTO tb_categorias (id,curso) VALUES (5,"E");

SELECT * from tb_categorias;
SELECT * FROM tb_cursos;

INSERT INTO tb_cursos (nome, valor, quantidade_alunos, id_categorias ) VALUES ("Inglês", 300, 50, 1);
INSERT INTO tb_cursos (nome, valor, quantidade_alunos, id_categorias ) VALUES ("Francês", 350, 30, 1);
INSERT INTO tb_cursos (nome, valor, quantidade_alunos, id_categorias ) VALUES ("Informática", 400, 150, 2);
INSERT INTO tb_cursos (nome, valor, quantidade_alunos, id_categorias ) VALUES ("Mátematica", 300, 250, 3);
INSERT INTO tb_cursos (nome, valor, quantidade_alunos, id_categorias ) VALUES ("Design", 400, 150, 4);
INSERT INTO tb_cursos (nome, valor, quantidade_alunos, id_categorias ) VALUES ("Gastrônomia", 350, 250, 5);
INSERT INTO tb_cursos (nome, valor, quantidade_alunos, id_categorias ) VALUES ("Design Gáfico", 300, 50, 4);
INSERT INTO tb_cursos (nome, valor, quantidade_alunos, id_categorias ) VALUES ("Espanhol", 350, 150, 1);

SELECT * FROM tb_cursos WHERE valor > 500;
SELECT * FROM tb_cursos WHERE valor BETWEEN 600 AND 1000;

SELECT * FROM tb_cursos WHERE nome LIKE "%j%";

SELECT * FROM tb_cursos INNER JOIN tb_categorias 
ON tb_cursos.id_categorias = tb_categorias.id;









