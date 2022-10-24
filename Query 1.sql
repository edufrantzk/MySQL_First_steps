USE sakila;
/* INSERTING VALUES INTO THE DATABASE */

VALUES 
    (DEFAULT, 'Spanish', '2008-02-10 05:02:19'),
    (DEFAULT, 'Polish', '2008-02-10 05:02:19')
    
/*DELETE FROM language
WHERE language_id = 10;*/


/* INSERTING VALUES IN MULTIPLE TABLES*/
INSERT INTO country 
VALUES
	(DEFAULT, 'Brasil2', '2025-02-15 04:44:00');

/*O last_insert_id() will link the city table with the country table */    
INSERT INTO city
VALUES
	(DEFAULT, 'Sao Paulo2', last_insert_id(), '2026-04-15 05:45:00');
    
INSERT INTO city
VALUES
	(DEFAULT, 'Santo Cristo', 15, DEFAULT);


/*COPY A COMPLETE TABLE*/
CREATE TABLE payment_backup AS
SELECT * FROM payment;

/*DELETING THE TABLE THAT WAS CREATEAD*/
DROP TABLE payment_backup;


/* FUNCTIONS ON SQL */
USE sakila;
SELECT
	MAX(amount) AS 'MAIOR',
	MIN(amount) AS 'MENOR',
    AVG(amount) AS 'MÉDIA',
    SUM(amount) AS 'TOTAL DAS VENDAS',
    COUNT(amount) AS 'QUANTIDADE DE VENDAS'
FROM payment
WHERE staff_id = 2
UNION 
SELECT
	MAX(amount) AS 'MAIOR',
	MIN(amount) AS 'MENOR',
    AVG(amount) AS 'MÉDIA',
    SUM(amount) AS 'TOTAL DAS VENDAS',
    COUNT(amount) AS 'QUANTIDADE DE VENDAS'
FROM payment
WHERE staff_id = 1;

/* GROUPING CUSTOMERS */
SELECT 
	customer_id,
	SUM(amount) AS Total
FROM payment
GROUP BY customer_id
ORDER BY Total DESC;

/* ORDERING CUSTOMERS */
SELECT
	cus.customer_id AS ID,
    cus.first_name AS Nome,
    cus.last_name AS Sobrenome,
    SUM(amount) AS Total
FROM payment pay
JOIN customer cus USING(customer_id)
GROUP BY customer_id
ORDER BY Total DESC;

/* FILTERING VALUES WITH HAVING */
SELECT
	cus.customer_id AS ID,
	cus.first_name AS Nome,
	cus.last_name AS Sobrenome,
	SUM(amount) AS Total,
    COUNT(amount) AS Compras
FROM payment pay
JOIN customer cus USING(customer_id)
GROUP BY customer_id
HAVING Total >= 180 AND Compras >= 35
ORDER BY Total DESC;


    

