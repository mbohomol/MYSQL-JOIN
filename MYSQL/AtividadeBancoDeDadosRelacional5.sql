CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;

CREATE TABLE tb_categorias(
id BIGINT auto_increment not null PRIMARY KEY,
tipo VARCHAR (20) NOT NULL  
);

CREATE TABLE tb_produtos(
nome  VARCHAR (20) NOT NULL,
valor BIGINT,
quantidade BIGINT,
id_categorias BIGINT,
FOREIGN KEY(id_categorias) REFERENCES tb_categorias (id)
);

INSERT INTO tb_categorias (id,tipo) VALUES (1,"Máteriais Maleáveis");
INSERT INTO tb_categorias (id,tipo) VALUES (2,"Máteriais Não Maleáveis");
INSERT INTO tb_categorias (id,tipo) VALUES (3,"Máteriais Resistentes");
INSERT INTO tb_categorias (id,tipo) VALUES (4,"Máteriais Condutores");
INSERT INTO tb_categorias (id,tipo) VALUES (5,"Máteriais Sintéticos");

SELECT * from tb_categorias;
SELECT * FROM tb_produtos;

INSERT INTO tb_produtos (nome, valor, quantidade, id_categorias ) VALUES ("Areia", 15, 3, 1);
INSERT INTO tb_produtos (nome, valor, quantidade, id_categorias ) VALUES ("Ferro", 35, 10, 4);
INSERT INTO tb_produtos (nome, valor, quantidade, id_categorias ) VALUES ("Grama", 10, 5, 5);
INSERT INTO tb_produtos (nome, valor, quantidade, id_categorias ) VALUES ("Cimento", 25, 7, 1);
INSERT INTO tb_produtos (nome, valor, quantidade, id_categorias ) VALUES ("Tijolo", 15, 8, 3);
INSERT INTO tb_produtos (nome, valor, quantidade, id_categorias ) VALUES ("Massa Corrida", 20, 5, 1);
INSERT INTO tb_produtos (nome, valor, quantidade, id_categorias ) VALUES ("Tinta", 15, 3, 1);
INSERT INTO tb_produtos (nome, valor, quantidade, id_categorias ) VALUES ("Lâmpada", 30, 5, 3);

SELECT * FROM tb_produtos WHERE valor > 100;
SELECT * FROM tb_produtos WHERE valor BETWEEN 50 AND 150;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.id_categorias = tb_categorias.id;

