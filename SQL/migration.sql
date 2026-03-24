CREATE TABLE usuarios_nova (
    id INT,
    nome VARCHAR(255) NOT NULL COMMENT 'Nome de usuário',
    email VARCHAR(255) NOT NULL UNIQUE COMMENT 'E-mail do usuário',
    data_nascimento DATE NOT NULL COMMENT 'Data de nascimento do usuário',
    endereco VARCHAR(100) NOT NULL COMMENT 'Endereço do usuário'
);

-- Copia os dados da tabela antiga para a nova
INSERT INTO usuarios_nova (id, nome, email, endereco, data_nascimento)
SELECT id, nome, email, endereco, data_nascimento 
FROM usuarios;

-- Remove a tabela antiga
DROP TABLE usuarios;

-- Renomeia a tabela nova para o nome original
ALTER TABLE usuarios_nova RENAME usuarios;

-- Alternativamente, se preferir apenas modificar a coluna sem criar uma nova tabela:
ALTER TABLE usuarios MODIFY COLUMN endereco VARCHAR(150)