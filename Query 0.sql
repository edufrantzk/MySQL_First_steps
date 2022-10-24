USE sakila;

/* SELECT, DISTINCT AND FROM */
SELECT DISTINCT address_id
FROM address;

/* ORDER BY */
SELECT *
FROM address
WHERE address_id >= 100
ORDER BY address;

/* LIKE */
SELECT * 
FROM actor
WHERE first_name LIKE 'A%';
/* The % after the A indicates that we want all the actors wich name starts with A */

/* BETWEEN */
SELECT *
FROM payment
WHERE amount BETWEEN 1.00 AND 3.99;


/* JOIN */
/* THE JOIN OPERATOR IS USED SO THAT WE CAN VIEW DIFFERENT TABLES ON 
THE SAME SCREEN. FOR THIS, THE TABLES MUST HAVE THE SAME PRIMARY KEY OR CONNECTION BETWEEN THEM.*/

SELECT * 
FROM customer cus
JOIN payment pay ON cus.customer_id = pay.payment_id;

/* FILTERING WITH JOIN */
SELECT 
	cus.customer_id,
    cus.first_name,
    pay.rental_id,
    pay.amount
FROM customer cus
JOIN payment pay
ON cus.customer_id = pay.payment_id;

/*MORE JOINS */
SELECT *
FROM address ad
JOIN city cit
ON ad.city_id = cit.city_id;

/* MULTIPLE TABLES */
SELECT
	cus.customer_id,
    cus.first_name,
    cus.last_name,
    ad.address,
    pay.rental_id,
    pay.amount
FROM customer cus
JOIN payment pay 
	ON cus.customer_id = pay.payment_id
JOIN address ad 
	ON cus.customer_id = ad.address_id;
    

/* OUT, LEFT and RIGHT JOIN */
/* with usual join some records can be left out of the table, 
for example if a customer has customer_id but no address_id it just nods and doesn't show either one,
this can be solved with LEFT and RIGHT JOIN so it will show all to the left or all on the right.*/
SELECT
	cus.customer_id,
    cus.first_name,
    cus.last_name,
    ad.address,
    pay.rental_id,
    pay.amount
FROM customer cus
JOIN payment pay 
	ON cus.customer_id = pay.payment_id
RIGHT JOIN address ad 
	ON cus.customer_id = ad.address_id;

	
