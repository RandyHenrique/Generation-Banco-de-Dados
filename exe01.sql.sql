-- Criação do Banco de Dados
CREATE DATABASE db_rh;
USE db_rh;

-- Criação da Tabela de Colaboradores
CREATE TABLE colaboradores (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    setor VARCHAR(255) NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (id)
);

-- Inserção de Dados
INSERT INTO colaboradores (nome, cargo, setor, salario) VALUES
('Ana Silva', 'Analista de RH', 'Recursos Humanos', 2500.00),
('Bruno Costa', 'Assistente Administrativo', 'Administração', 1800.00),
('Carla Souza', 'Desenvolvedora Júnior', 'TI', 3200.00),
('Diego Martins', 'Auxiliar de RH', 'Recursos Humanos', 1900.00),
('Eduarda Lima', 'Coordenadora de RH', 'Recursos Humanos', 4500.00);

-- SELECT salário > 2000
SELECT * FROM colaboradores WHERE salario > 2000;

-- SELECT salário < 2000
SELECT * FROM colaboradores WHERE salario < 2000;
