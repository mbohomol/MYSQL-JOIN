CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id BIGINT auto_increment not null PRIMARY KEY,
massa VARCHAR (20) NOT NULL  
);

CREATE TABLE tb_pizzas(
nome VARCHAR (20) NOT NULL,
tipo VARCHAR (20) NOT NULL,
valor BIGINT,
recheio VARCHAR (20) NOT NULL,
id_categorias BIGINT,
FOREIGN KEY(id_categorias) REFERENCES tb_categorias (id)
);

INSERT INTO tb_categorias (id,massa) VALUES (1,"Fina");
INSERT INTO tb_categorias (id, massa) VALUES (2, "Crocante");
INSERT INTO tb_categorias (id, massa) VALUES (3, "Recheada");
INSERT INTO tb_categorias (id, massa) VALUES (4, "Pan");
INSERT INTO tb_categorias (id, massa) VALUES (5, "Grossa");

SELECT * from tb_categorias;

SELECT * FROM tb_pizzas;

INSERT INTO tb_pizzas (nome, tipo, valor, recheio, id_categorias ) VALUES ("Marguerita", "Salgada", 100, "Queijo e Manjericão, 1");
INSERT INTO tb_pizzas (nome, tipo, valor, recheio, id_categorias ) VALUES ("Baiana", "Salgada", 150, "Clabresa e Pimenta", 2);
INSERT INTO tb_pizzas (nome, tipo, valor, recheio, id_categorias ) VALUES ("Chocolate", "Doce", 35, "Chocolate e Granulado", 3);
INSERT INTO tb_pizzas (nome, tipo, valor, recheio, id_categorias ) VALUES ("Caipira", "Salgada", 120, "Frango e Milho", 4);
INSERT INTO tb_pizzas (nome, tipo, valor, recheio, id_categorias ) VALUES ("Banana", "Doce", 35, "Banana e Canela", 5);
INSERT INTO tb_pizzas (nome, tipo, valor, recheio, id_categorias ) VALUES ("Milho", "Salgada", 150, "Milho e Catupiry", 6);
INSERT INTO tb_pizzas (nome, tipo, valor, recheio, id_categorias ) VALUES ("Mussarela", "Salgada", 100, "Queijo", 7);
INSERT INTO tb_pizzas (nome, tipo, valor, recheio, id_categorias ) VALUES ("Rúcula", "Salgada", 120, "Rúcula e Tomate Seco", 8);

SELECT * FROM tb_pizzas WHERE valor > 45;
SELECT * FROM tb_pizzas WHERE valor BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.id_categorias = tb_categorias.id;


