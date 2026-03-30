-- Definindo chaves primárias e estrangeiras para as tabelas
ALTER TABLE usuarios
MODIFY COLUMN id INT AUTO_INCREMENT,
ADD PRIMARY KEY (id);

ALTER TABLE destinos
MODIFY COLUMN id INT AUTO_INCREMENT,
ADD PRIMARY KEY (id);

ALTER TABLE reservas
MODIFY COLUMN id INT AUTO_INCREMENT,
ADD PRIMARY KEY (id);

ALTER TABLE reservas
ADD CONSTRAINT fk_reservas_usuarios
FOREIGN KEY (id_usuario) REFERENCES usuarios (id);

ALTER TABLE reservas
ADD CONSTRAINT fk_reservas_destinos
FOREIGN KEY (id_destino) REFERENCES destinos (id);

-- Exclusão em cascata para manter a integridade referencial
ALTER TABLE reservas
ADD CONSTRAINT fk_usuarios
FOREIGN KEY (id_usuario) REFERENCES usuarios (id)
ON DELETE CASCADE;

-- Para remover as chaves estrangeiras, caso necessário
ALTER TABLE reservas
DROP CONSTRAINT fk_reservas_usuarios;