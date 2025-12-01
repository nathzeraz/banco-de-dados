CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(255) NOT NULL, 
    nivel VARCHAR(100) NOT NULL              
);

CREATE TABLE tb_cursos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT,
    carga_horaria INT NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    id_categoria BIGINT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

-- registros em tb_categorias
INSERT INTO tb_categorias (nome_categoria, nivel) VALUES
("Programação", "Iniciante"),
("Programação", "Intermediário"),
("Marketing", "Avançado"),
("Design", "Intermediário"),
("Banco de Dados", "Avançado");

-- registros em tb_cursos
INSERT INTO tb_cursos (nome, descricao, carga_horaria, valor, id_categoria) VALUES
("Java para Iniciantes", "Curso básico de Java", 40, 750.00, 2),
("Lógica de Programação", "Fundamentos da computação", 30, 300.00, 1),
("Marketing Digital Pro", "Estratégias avançadas", 60, 1200.00, 3),
("Design UX/UI", "Criação de interfaces modernas", 50, 950.00, 4),
("MySQL Master", "Banco de dados relacional completo", 80, 1100.00, 5),
("Java Intermediário", "POO, collections, exceptions", 60, 850.00, 2),
("HTML e CSS Essencial", "Criação de sites do zero", 25, 250.00, 4),
("JavaScript Completo", "Curso moderno e atualizado", 55, 680.00, 1);

-- cursos valor maior de R$500
SELECT * FROM tb_cursos
WHERE valor > 500.00;

-- cursos entre R$600 e R$1000
SELECT * FROM tb_cursos
WHERE valor BETWEEN 600.00 AND 1000.00;

-- cursos com letra "J"
SELECT * FROM tb_cursos
WHERE nome LIKE "%J%";

-- INNER JOIN entre cursos e categorias
SELECT c.*, cat.nome_categoria, cat.nivel
FROM tb_cursos c
INNER JOIN tb_categorias cat
ON c.id_categoria = cat.id;

-- INNER JOIN trazendo apenas cursos da categoria "Java"
SELECT c.*, cat.nome_categoria
FROM tb_cursos c
INNER JOIN tb_categorias cat
ON c.id_categoria = cat.id
WHERE c.nome LIKE "%Java%";
