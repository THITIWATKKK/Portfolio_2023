/*see table*/ 
USE Credit;
show tables;

/*see all the records in a database*/
USE Credit;
SELECT count(*) FROM member;

/*see all column */ 
SELECT * FROM category limit 5;
SELECT * FROM charge limit 5;
SELECT * FROM corporation limit 5;
SELECT * FROM member limit 5;
SELECT * FROM payment limit 5;
SELECT * FROM provider limit 5;
SELECT * FROM region limit 5;
SELECT * FROM statement limit 5;
SELECT * FROM status limit 5;

/*we can see member.memberCode is null let's try to add some , so permission is not allow to update so i just sample  */ 
UPDATE member
SET member_code = LPAD(FLOOR(RAND() * 1000) + 1, 2, '0')
WHERE member_code IS NULL;

SELECT member_code FROM member WHERE member_code IS NOT NULL;


