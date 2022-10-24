/* SUBQUERY */
SELECT 
	pay.payment_id,
    pay.amount
FROM payment pay
WHERE amount > (SELECT AVG(amount) FROM payment)
ORDER BY amount DESC;

/* EXTRACTING ALL THE TRANSACTIONS WHICH HAS THE 
SAME VALUE AS THE CUSTOMER 1 BIGGEST TRANSACTION */
SELECT *
FROM payment
WHERE amount = (
	SELECT MAX(amount)
    FROM payment
    WHERE customer_id = 1
    );
    
    
/* IN */
SELECT *
FROM customer
WHERE customer_id IN (
	SELECT customer_id
    FROM payment 
    GROUP BY customer_id
    HAVING COUNT(*)	> 35
);


/*ANY */
SELECT *
FROM customer 
WHERE customer_id = ANY (
	SELECT customer_id
    FROM payment
    GROUP BY customer_id
    HAVING COUNT(*) > 35
);
