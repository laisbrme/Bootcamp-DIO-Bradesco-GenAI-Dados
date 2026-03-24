-- Consultando todas as tabelas
SELECT * 
FROM usuarios;

SELECT * 
FROM viagens.destinos;

SELECT * 
FROM viagens.reservas;

-- Consultando usuários com identificador 1
SELECT * 
FROM usuarios 
WHERE id = 1;

-- Consultando usuarios com identificador 1 ou nome 'João'
SELECT * 
FROM usuarios 
WHERE id = 1 OR nome LIKE '%João%';