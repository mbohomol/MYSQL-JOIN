CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT auto_increment PRIMARY KEY, 
classe VARCHAR (20) NOT NULL,
nivel VARCHAR (20) NOT NULL
);

CREATE TABLE tb_personagens(
id BIGINT auto_increment PRIMARY KEY,
nome VARCHAR (40) NOT NULL,
habilidade VARCHAR (40) NOT NULL,
ataque BIGINT NOT NULL,
id_classes BIGINT,
FOREIGN KEY(id_classes) REFERENCES tb_classes (id)
);

INSERT INTO tb_classes (classe, nivel) VALUES ("Arqueiro", 1);
INSERT INTO tb_classes (classe, nivel) VALUES ("Fada", 2);
INSERT INTO tb_classes (classe, nivel) VALUES ("Mágico", 3);
INSERT INTO tb_classes (classe, nivel) VALUES ("Princesa", 4);
INSERT INTO tb_classes (classe, nivel) VALUES ("Príncipe", 5);

SELECT * FROM tb_personagens;

INSERT INTO tb_personagens (nome, habilidade, ataque, id_classes) VALUES ("Tim", "Correr", 3000, 1);
INSERT INTO tb_personagens (nome, habilidade, ataque, id_classes) VALUES ("Elsa", "Cantar", 4000, 4);
INSERT INTO tb_personagens (nome, habilidade, ataque, id_classes) VALUES ("Thomas", "Pular", 1500, 1);
INSERT INTO tb_personagens (nome, habilidade, ataque, id_classes) VALUES ("Ana", "Voar", 1800, 2);
INSERT INTO tb_personagens (nome, habilidade, ataque, id_classes) VALUES ("Maya", "Dançar", 2000, 4);
INSERT INTO tb_personagens (nome, habilidade, ataque, id_classes) VALUES ("Harry", "Lutar", 3000, 5);
INSERT INTO tb_personagens (nome, habilidade, ataque, id_classes) VALUES ("Hannah", "Escrever", 1500, 3);
INSERT INTO tb_personagens (nome, habilidade, ataque, id_classes) VALUES ("Simon", "Ler", 1500, 3);

SELECT * FROM tb_personagens WHERE ataque > 2000;
SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT * FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.id_classes = tb_classes.id;

SELECT nome, habilidade, ataque, id_classes, classe, nivel FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.id_classes = tb_classes.id;

SELECT * FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.id_classes = tb_classes.id 
WHERE tb_classes.classe = "Arqueiro";

SELECT nome, habilidade, ataque, id_classes, classe, nivel FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.id_classes = tb_classes.id 
WHERE tb_classes.classe = "Arqueiro";


