/* see who's the city in top 20 */
USE Credit;
SELECT  r.city, COUNT(m.region_no) AS city_count
FROM member m
INNER JOIN region r ON m.region_no = r.region_no
GROUP BY  r.city
ORDER BY city_count DESC ;

/* see who's the region in top 20 */
USE Credit;
SELECT  r.region_name, COUNT(m.region_no) AS region_count
FROM member m
INNER JOIN region r ON m.region_no = r.region_no
GROUP BY r.region_name
ORDER BY region_count DESC ;

/* see most catagory*/
SELECT c.category_desc, COUNT(c.category_no) AS category_count 
FROM category c 
JOIN charge ch ON ch.category_no = c.category_no
JOIN member m ON m.member_no = ch.member_no
GROUP BY c.category_desc
ORDER BY category_count DESC ;

/* see most spend*/
SELECT m.member_no, m.lastname, m.firstname, m.phone_no, SUM(statement.statement_amt) AS amount
FROM member m 
JOIN statement ON statement.member_no = m.member_no
GROUP BY m.member_no, m.lastname, m.firstname, m.phone_no
ORDER BY amount DESC limit 10;

/* see all transaction of member 1000*/
SELECT m.member_no, m.lastname, m.firstname, p.payment_amt, p.payment_dt
FROM member m
JOIN payment p ON m.member_no = p.member_no
WHERE m.member_no = 10000
ORDER BY p.payment_amt DESC;

/* find member start with letter A */
SELECT * from member
WHERE lastname like 'A%';