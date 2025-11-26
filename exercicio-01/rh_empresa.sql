CREATE DATABASE rh_empresa;

USE rh_empresa;

CREATE TABLE colaboradores (
id BIGINT auto_increment PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
cargo VARCHAR(255) NOT NULL,
salario DECIMAL(10,2) NOT NULL,
departamento VARCHAR(100),
data_contratacao DATE
);

INSERT INTO COLABORADORES (nome, cargo, salario, departamento, data_contratacao)
VALUES
('Nathalia Lima', 'Analista de TI', 3500.00, 'Tecnologia', '2022-01-15'),
('Marcos Santos', 'Desenvolvedor Pleno', 4500.00, 'Tecnologia', '2022-12-05'),
('Isabel Oliveira', 'Assistente Administrativo', 2000.00, 'Administrativo','2024-08-27'),
('Isabelly Alves','Coordenadora de RH', 4000.00, 'Recursos Humanos','2021-04-12'),
('Fellipe Oliveira','Gerente de Projetos', 5200.00, 'Tecnologia','2023-09-19');

SELECT id, nome, cargo, salario FROM colaboradores
WHERE salario > 2000;

SELECT id, nome, cargo, salario FROM colaboradores
WHERE salario < 2000;

UPDATE colaboradores
SET salario = 2100.00
WHERE id = 4;

SELECT id, nome, salario FROM colaboradores WHERE id = 4;


