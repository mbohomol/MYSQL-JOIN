CREATE DATABASE cidade_dos_vegetais;
USE cidade_dos_vegetais;

CREATE TABLE  tb_categorias(
id BIGINT auto_increment not null PRIMARY KEY,
tipo VARCHAR (40) NOT NULL 
);

CREATE TABLE tb_produtos(
nome VARCHAR (30) not null,
valor BIGINT,
quantidade BIGINT,
marca VARCHAR (10) not null,
id_categorias BIGINT,
FOREIGN KEY(id_categorias) REFERENCES tb_categorias (id)
);

INSERT INTO tb_categorias (id,tipo) VALUES (1,"Verdura");
INSERT INTO tb_categorias (id,tipo) VALUES (2,"Legumes");
INSERT INTO tb_categorias (id,tipo) VALUES (3,"Frutas");
INSERT INTO tb_categorias (id,tipo) VALUES (4,"Raízes");
INSERT INTO tb_categorias (id,tipo) VALUES (5,"Leguminosas");

SELECT * from tb_categorias;

SELECT * FROM tb_produtos; 

INSERT INTO tb_produtos (nome, valor, quantidade, marca, id_categorias ) VALUES ("Manga", 8, 10, "A", 3);
INSERT INTO tb_produtos (nome, valor, quantidade, marca, id_categorias ) VALUES ("Alface", 2, 15, "C", 1);
INSERT INTO tb_produtos (nome, valor, quantidade, marca, id_categorias ) VALUES ("Brócolis", 5, 20, "A", 2);
INSERT INTO tb_produtos (nome, valor, quantidade, marca, id_categorias ) VALUES ("Beterraba", 7, 15, "B", 4);
INSERT INTO tb_produtos (nome, valor, quantidade, marca, id_categorias ) VALUES ("Feijão", 10, 5, "B", 5);
INSERT INTO tb_produtos (nome, valor, quantidade, marca, id_categorias ) VALUES ("Cenoura", 13, 20, "A", 4);
INSERT INTO tb_produtos (nome, valor, quantidade, marca, id_categorias ) VALUES ("Banana", 11, 5, "B", 3);
INSERT INTO tb_produtos (nome, valor, quantidade, marca, id_categorias ) VALUES ("Abacaxi", 8, 10, "C", 3);

SELECT * FROM tb_produtos WHERE valor > 45;
SELECT * FROM tb_produtos WHERE valor BETWEEN 50 AND 150;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.id_categorias = tb_categorias.id;


