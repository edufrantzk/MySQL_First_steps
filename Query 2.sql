/* SUBQUERY */
SELECT 
	pay.payment_id,
    pay.amount
FROM payment pay
WHERE amount > (SELECT AVG(amount) FROM payment)
ORDER BY amount DESC;

/*Puxando todas transações que tem o mesmo valor da maior transação do cliente 1 EXTRACTING ALL THE TRANSACTIONS WHICH HAS THE 
SAME VALUE AS THE CUSTOMER 1 BIGGEST TRANSACTION */
SELECT *
FROM payment
WHERE amount = (
	SELECT MAX(amount)
    FROM payment
    WHERE customer_id = 1
    );
