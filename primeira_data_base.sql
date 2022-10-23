USE carros;

/* CREATE DATABASE carros */

/*CREATE TABLE marcas(
	id INT NOT NULL AUTO_INCREMENT,
    nome_marca VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);*/

/* ALTER TABLE marcas ADD origem VARCHAR(255) */
	
/*CREATE TABLE inventario(
	id INT NOT NULL AUTO_INCREMENT,
    modelo VARCHAR(255) NOT NULL,
    transmissao VARCHAR(255) NOT NULL,
    motor VARCHAR(255) NOT NULL,
    combustivel VARCHAR(255) NOT NULL,
    marcas_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (marcas_id) REFERENCES marcas(id)
);*/


/* CREATE TABLE clientes (
	id INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	sobrenome VARCHAR(255) NOT NULL, 
	endereco VARCHAR(255) NOT NULL,
	PRIMARY KEY (id)
); */


/*---INSERINDO DADOS NA TABELA---*/

INSERT INTO clientes (nome, sobrenome, endereco)
VALUES 
	('João', 'Silva', 'Rua 1'),
    ('José', 'Maria', 'Rua 2'),
    ('Bob', 'Jeff', 'Rua 3'),
    ('Anderson', 'Jacó', 'Rua 4'),
    ('Mariana', 'Garden', 'Rua 5');
    
    
INSERT INTO marcas (nome_marca, origem)
VALUES
	('Volvo', 'Japao'),
    ('Volkswagen', 'Alemanha'),
    ('Fiat', 'Italia'),
    ('Ford', 'Estados Unidos'),
    ('Chevrolet', 'Estados Unidos');
    
    
INSERT INTO inventario (modelo, transmissao, motor, combustivel, marcas_id)
VALUES 
	('T60', 'Automatico', '3.0', 'Diesel', 1),
    ('Golf', 'Automatico', '2.0', 'Gasolina', 2),
    ('Toro', 'Automatico', '1.8', 'Gasolina', 3),
    ('Ranger', 'Automatico', '2.0', 'Diesel', 4),
    ('Onix', 'Manual', 1.0, 'Gasolina', 5);
    












