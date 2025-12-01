CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(255) NOT NULL,         
    tamanho VARCHAR(100) NOT NULL
);

CREATE TABLE tb_pizzas (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    ingredientes TEXT,
    valor DECIMAL(6,2) NOT NULL,
    borda_recheada BOOLEAN,
    id_categoria BIGINT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

-- registros na Tabela Categorias
INSERT INTO tb_categorias (tipo, tamanho) VALUES
("Salgada", "Grande"),
("Salgada", "Média"),
("Doce", "Grande"),
("Vegetariana", "Média"),
("Especial", "Grande");

-- registros na Tabela Pizzas
INSERT INTO tb_pizzas (nome, ingredientes, valor, borda_recheada, id_categoria) VALUES
("Margherita", "Molho, mussarela, tomate, manjericão", 42.90, FALSE, 4),
("Mussarela", "Molho, mussarela", 45.00, TRUE, 1),
("Calabresa", "Molho, mussarela, calabresa, cebola", 48.50, FALSE, 1),
("Frango com Catupiry", "Molho, frango, catupiry", 55.00, TRUE, 5),
("Brigadeiro", "Chocolate ao leite, granulado", 60.00, FALSE, 3),
("Romeu e Julieta", "Goiabada, queijo", 58.00, FALSE, 3),
("Portuguesa", "Molho, mussarela, presunto, ovo, cebola", 52.00, TRUE, 2),
("Mexicana", "Molho, mussarela, carne moída, pimenta", 70.00, FALSE, 5);

-- Pizzas com valor maior que R$45
SELECT * FROM tb_pizzas
WHERE valor > 45.00;

-- Pizzas entre R$50 e R$100
SELECT * FROM tb_pizzas
WHERE valor BETWEEN 50.00 AND 100.00;

-- Pizzas com letra "M" 
SELECT * FROM tb_pizzas
WHERE nome LIKE "%M%";

-- INNER JOIN entre pizzas e categorias
SELECT p.*, c.tipo, c.tamanho
FROM tb_pizzas p
INNER JOIN tb_categorias c
ON p.id_categoria = c.id;

-- INNER JOIN apenas categoria doce
SELECT p.*, c.tipo
FROM tb_pizzas p
INNER JOIN tb_categorias c
ON p.id_categoria = c.id
WHERE c.tipo = "Doce";
