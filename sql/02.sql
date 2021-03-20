/*
 * Write a SQL query SELECT query that:
 * computes the country with the most customers in it. 
 */

SELECT country
FROM (
    SELECT country, count(*) AS count_customers
    FROM customer
    INNER JOIN address USING (address_id)
    INNER JOIN city USING (city_id)
    INNER JOIN country USING (country_id)
    GROUP BY country
) AS temp
ORDER BY count_customers DESC
LIMIT 1;
