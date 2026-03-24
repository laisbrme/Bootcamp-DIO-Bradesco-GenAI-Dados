-- Atualizar o id do usuário com email especifico
UPDATE usuarios
SET id = 4
WHERE email = 'lais@brum.com';

-- Deletar o destino com nome específico
DELETE FROM viagens.destinos
WHERE nome = 'Balneário Camboriú';