--Criando base de dados
CREATE DATABASE catalogo_produtos;

------------------------------------
--Criando tabela
USE catalogo_produtos;

CREATE TABLE produtos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR (100),
  descricao TEXT,
  preco DECIMAL (10,2)
);