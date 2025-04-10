-- 1. Update the rental duration and rental rate of the film 'Inception'
UPDATE film
SET rental_duration = 21,
    rental_rate = 9.99
WHERE title = 'Inception';


SELECT c.customer_id, COUNT(DISTINCT r.rental_id) AS rental_count, COUNT(DISTINCT p.payment_id) AS payment_count
FROM customer c
JOIN rental r ON c.customer_id = r.customer_id
JOIN payment p ON c.customer_id = p.customer_id
GROUP BY c.customer_id
HAVING COUNT(DISTINCT r.rental_id) >= 10 AND COUNT(DISTINCT p.payment_id) >= 10
LIMIT 1;



UPDATE customer
SET first_name = 'Azamat',
    last_name = 'Duisenbekov',
    email = 'azamat@example.com',
    address_id = 10,         
    create_date = CURRENT_DATE
WHERE customer_id = 5;       
