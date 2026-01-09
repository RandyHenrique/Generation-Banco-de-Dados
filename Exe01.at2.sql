
CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;


CREATE TABLE tb_classes (
    id_classe BIGINT AUTO_INCREMENT,
    nome_classe VARCHAR(50) NOT NULL,
    descricao VARCHAR(100),
    PRIMARY KEY (id_classe)
);


CREATE TABLE tb_personagens (
    id_personagem BIGINT AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    nivel INT NOT NULL,
    id_classe BIGINT,
    PRIMARY KEY (id_personagem),
    FOREIGN KEY (id_classe) REFERENCES tb_classes(id_classe)
);


INSERT INTO tb_classes (nome_classe, descricao) VALUES
('Guerreiro', 'Especialista em combate corpo a corpo'),
('Arqueiro', 'Especialista em ataques à distância'),
('Mago', 'Utiliza magias ofensivas e defensivas'),
('Assassino', 'Alta velocidade e dano crítico'),
('Paladino', 'Combate e suporte defensivo');


INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, nivel, id_classe) VALUES
('Conan', 2500, 1800, 20, 1),
('Legolas', 2300, 1200, 18, 2),
('Merlin', 3000, 900, 22, 3),
('Cassandra', 2100, 1500, 19, 4),
('Arthur', 1900, 2000, 21, 5),
('Celina', 2200, 1300, 17, 3),
('Cael', 1800, 1100, 16, 2),
('Cronos', 2600, 1700, 23, 1);


SELECT * FROM tb_personagens
WHERE poder_ataque > 2000;


SELECT * FROM tb_personagens
WHERE poder_defesa BETWEEN 1000 AND 2000;


SELECT * FROM tb_personagens
WHERE nome LIKE '%C%';


SELECT 
    p.id_personagem,
    p.nome,
    p.poder_ataque,
    p.poder_defesa,
    p.nivel,
    c.nome_classe
FROM tb_personagens p
INNER JOIN tb_classes c
ON p.id_classe = c.id_classe;


SELECT 
    p.id_personagem,
    p.nome,
    p.poder_ataque,
    p.poder_defesa,
    p.nivel,
    c.nome_classe
FROM tb_personagens p
INNER JOIN tb_classes c
ON p.id_classe = c.id_classe
WHERE c.nome_classe = 'Arqueiro';
