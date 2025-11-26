CREATE DATABASE ecommerce;

USE ecommerce;

CREATE TABLE produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    categoria VARCHAR(255) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL,
    data_cadastro DATE
);

INSERT INTO produtos (nome, categoria, preco, estoque, data_cadastro) VALUES
('Smartphone Samsung A54', 'Eletrônicos', 1899.90, 35, '2024-01-12'),
('Notebook Lenovo Ideapad 3', 'Informática', 2599.00, 20, '2024-02-03'),
('Fone Bluetooth JBL Tune 510BT', 'Áudio', 249.90, 50, '2024-03-10'),
('Smartwatch Xiaomi Mi Band 7', 'Wearables', 349.99, 40, '2024-02-28'),
('Cafeteira Philips Walita', 'Eletrodomésticos', 499.00, 15, '2024-04-05'),
('TV LG 50 Polegadas 4K', 'Eletrônicos', 2799.00, 10, '2024-01-18'),
('Mouse Gamer Redragon Cobra', 'Informática', 159.90, 60, '2024-02-01'),
('Teclado Mecânico HyperX Alloy', 'Informática', 699.00, 25, '2024-03-15');

SELECT * FROM produtos
WHERE preco > 500;

SELECT * FROM produtos
WHERE preco < 500;

UPDATE produtos
SET preco = 279.90
WHERE id = 3;

SELECT * FROM produtos WHERE id = 3;
