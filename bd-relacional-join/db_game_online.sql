CREATE DATABASE db_game_online;

USE db_game_online;

-- Tabela de Classes
CREATE TABLE tb_classes (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    tipo VARCHAR(255) NOT NULL,
    descricao TEXT
);

-- Tabela de Personagens
CREATE TABLE tb_personagens (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    nivel INT NOT NULL,
    id_classe BIGINT,
    FOREIGN KEY(id_classe) REFERENCES tb_classes(id)
);

-- registros na Tabela Classes
INSERT INTO tb_classes (nome, tipo, descricao) VALUES
("Guerreiro", "Força", "Especialista em combate corpo a corpo"),
("Arqueiro", "Destreza", "Especialista em ataques à distância"),
("Mago", "Magia", "Manipula elementos e feitiços"),
("Assassino", "Agilidade", "Ataques furtivos e críticos"),
("Tanque", "Defesa", "Alto poder de resistência");

-- registros na Tabela Personagens

INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, nivel, id_classe) VALUES
("Cleron", 2500, 1500, 20, 1),
("Mirella", 1800, 900, 15, 2),
("Calypsa", 3000, 1200, 25, 3),
("Thorik", 1200, 2000, 18, 5),
("Cassian", 2200, 1900, 22, 4),
("Raven", 900, 800, 10, 2),
("Catarina", 2600, 1700, 27, 1),
("Draxus", 1500, 1100, 14, 3);

-- poder de ataque > 2000
SELECT * FROM tb_personagens 
WHERE poder_ataque > 2000;

-- poder de defesa entre 1000 e 2000
SELECT * FROM tb_personagens
WHERE poder_defesa BETWEEN 1000 AND 2000;


-- personagens c a letra "C" no nome
SELECT * FROM tb_personagens
WHERE nome LIKE "%C%";


-- INNER JOIN entre personagens e classes
SELECT p.*, c.nome AS classe, c.tipo, c.descricao
FROM tb_personagens p
INNER JOIN tb_classes c
ON p.id_classe = c.id;


-- INNER JOIN apenas pros arqueiros

SELECT p.*, c.nome AS classe
FROM tb_personagens p
INNER JOIN tb_classes c
ON p.id_classe = c.id
WHERE c.nome = "Arqueiro";
