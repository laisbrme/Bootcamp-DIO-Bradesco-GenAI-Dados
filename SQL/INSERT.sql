INSERT INTO usuarios (id, nome, email, data_nascimento, endereco) 
VALUES (1, 'Laís Brum', 'lais@brum.com', '1990-01-01', 'Rua das Flores, 123'),
       (2, 'João Silva', 'joao@silva.com', '1985-05-15', 'Avenida Brasil, 456'),
       (3, 'Maria Oliveira', 'maria@oliveira.com', '1992-08-20', 'Travessa das Rosas, 789');

INSERT INTO viagens.destinos (id, nome, descricao) 
VALUES (1, 'Balneário Camboriú', 'Cidade litorânea famosa por suas praias e vida noturna.'),
       (2, 'Florianópolis', 'Capital de Santa Catarina, conhecida por suas praias e trilhas.'), 
       (3, 'Blumenau', 'Cidade famosa pela Oktoberfest e arquitetura alemã.');

INSERT INTO viagens.reservas (id, id_usuario, id_destino, data, status) 
VALUES (1, 1, 1, '2023-10-10', 'Pendente'),
       (2, 2, 2, '2023-11-15', 'Confirmada'), 
       (3, 3, 3, '2023-12-20', 'Cancelada');