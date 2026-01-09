DROP DATABASE IF EXISTS db_pizzaria_legal;

CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id_categoria BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao VARCHAR(100) NOT NULL
);
CREATE TABLE tb_pizzas (
    id_pizza BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    valor DECIMAL(8,2) NOT NULL,
    tamanho VARCHAR(20) NOT NULL,
    borda_recheada TINYINT(1) NOT NULL,
    id_categoria BIGINT NOT NULL,
    CONSTRAINT fk_pizzas_categorias
        FOREIGN KEY (id_categoria)
        REFERENCES tb_categorias(id_categoria)
);


INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Tradicional', 'Pizzas salgadas tradicionais'),
('Especial', 'Pizzas com ingredientes diferenciados'),
('Premium', 'Pizzas gourmet'),
('Doce', 'Pizzas doces'),
('Vegetariana', 'Pizzas sem carne');


INSERT INTO tb_pizzas (nome, valor, tamanho, borda_recheada, id_categoria) VALUES
('Margherita', 48.00, 'Grande', 1, 1),
('Calabresa', 45.00, 'Grande', 0, 1),
('Quatro Queijos', 55.00, 'Grande', 1, 2),
('Portuguesa', 60.00, 'Grande', 1, 2),
('Frango com Catupiry', 65.00, 'Grande', 1, 3),
('Chocolate', 52.00, 'Media', 0, 4),
('Morango com Chocolate', 70.00, 'Media', 0, 4),
('Vegetariana Especial', 58.00, 'Grande', 0, 5);


SELECT * FROM tb_pizzas
WHERE valor > 45.00;


SELECT * FROM tb_pizzas
WHERE valor BETWEEN 50.00 AND 100.00;


SELECT * FROM tb_pizzas
WHERE nome LIKE '%M%';


SELECT
    p.id_pizza,
    p.nome,
    p.valor,
    p.tamanho,
    p.borda_recheada,
    c.nome_categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c
ON p.id_categoria = c.id_categoria;


SELECT
    p.id_pizza,
    p.nome,
    p.valor,
    p.tamanho,
    p.borda_recheada,
    c.nome_categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c
ON p.id_categoria = c.id_categoria
WHERE c.nome_categoria = 'Doce';