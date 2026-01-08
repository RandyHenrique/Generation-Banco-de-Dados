

-- Criação do Banco de Dados
CREATE DATABASE db_escola;
USE db_escola;

-- Criação da Tabela de Estudantes
CREATE TABLE estudantes (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    idade INT NOT NULL,
    serie VARCHAR(50) NOT NULL,
    nota DECIMAL(3,1) NOT NULL,
    PRIMARY KEY (id)
);

-- Inserção de Dados (mínimo 8 registros)
INSERT INTO estudantes (nome, idade, serie, nota) VALUES
('Ana Pereira', 15, '1º Ano', 8.5),
('Bruno Santos', 16, '2º Ano', 6.8),
('Carla Oliveira', 14, '9º Ano', 7.2),
('Daniel Costa', 17, '3º Ano', 5.9),
('Eduarda Lima', 15, '1º Ano', 9.0),
('Felipe Rocha', 16, '2º Ano', 6.5),
('Gabriela Alves', 14, '9º Ano', 7.8),
('Henrique Souza', 17, '3º Ano', 4.7);

-- SELECT estudantes com nota maior que 7.0
SELECT * 
FROM estudantes
WHERE nota > 7.0;

-- SELECT estudantes com nota menor que 7.0
SELECT * 
FROM estudantes
WHERE nota < 7.0;

-- Atualização de um registro
UPDATE estudantes
SET nota = 7.5
WHERE id = 2;

-- Confirmação da atualização
SELECT * FROM estudantes WHERE id = 2;
