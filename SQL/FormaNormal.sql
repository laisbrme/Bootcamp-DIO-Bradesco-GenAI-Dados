-- Normalização dos dados para a 1FN (Primeira Forma Normal)
-- 1FN: Garante que cada valor seja atomico e que os registros sejam únicos e identificáveis.
ALTER TABLE usuarios
ADD rua VARCHAR(100),
ADD numero VARCHAR(10),
ADD cidade VARCHAR(50),
ADD estado VARCHAR(20);

-- Migrar os dados do campo 'endereco' para os novos campos
UPDATE usuarios
SET rua = SUBSTRING_INDEX(endereco, ',', 1),
    numero = SUBSTRING_INDEX(SUBSTRING_INDEX(endereco, ',', 2), ',', -1),
    cidade = SUBSTRING_INDEX(SUBSTRING_INDEX(endereco, ',', 3), ',', -1),
    estado = SUBSTRING_INDEX(endereco, ',', -1);

-- Remover o campo 'endereco' após a migração
ALTER TABLE usuarios
DROP COLUMN endereco;

-- Normalização dos dados para a 2FN (Segunda Forma Normal)
-- 2FN: Garante que os atributos não chave dependam totalmente da chave primária, evitando dependencias parciais.
-- Se a minha tabela conter uma chave primária composta, preciso garantir que cada campo dependa de toda a chave primária, não apenas de parte dela.
-- Caso a chave primaria for simples, a 2FN já estará atendida, pois não haverá dependências parciais.

-- Normalização dos dados para a 3FN (Terceira Forma Normal)
-- 3FN: Elimina dependencias transitivas entre os atributos não chave, garantindo que cada atributo não chave dependa apenas da chave primária, não hvendo dependencias indiretas etre eles.

-- Normalização dos dados para a BCNF (Forma Normal de Boyce-Codd)
-- BCNF: Requer que não exista nenhuma dependência funcional não trivial de atributos em algo mais do que um superconjunto de uma chave candidata. Neste estágio, todos os atributos são dependentes de uma chave, de uma chave inteira e de nada mais que uma chave (excluindo dependências triviais, como A → A);

-- Normalização dos dados para a 4FN (Quarta Forma Normal)
-- 4FN: Requer que não exista nenhuma dependência multi-valorada não trivial de conjuntos de atributo em algo mais de que um superconjunto de uma chave candidata;

-- Normalização dos dados para a 5FN (Quinta Forma Normal)
-- 5FN: Requer que não exista dependências de joins (associações) não triviais que não venham de restrições chave;

-- Normalização dos dados para a 6FN (Sexta Forma Normal)
-- 6FN: Requer que todas as restrições sigam os domínios e restrições chave.