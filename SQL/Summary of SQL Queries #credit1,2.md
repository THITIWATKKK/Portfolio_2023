# Summary of SQL Queries #credit1,2
In this project, I have utilized SQL queries to retrieve and analyze data from the Credit database. The following queries have been executed:

1. City Analysis
To identify the top 20 cities based on the number of members, the query joins the "member" and "region" tables. It counts the number of members in each city and sorts the results in descending order.

2. Region Analysis
To determine the top 20 regions with the highest number of members, the query performs a similar process as the city analysis. It counts the members in each region and presents the results in descending order.

3. Category Analysis
This query focuses on finding the most frequent categories used by members. It combines the "category," "charge," and "member" tables to count the occurrence of each category. The results are then sorted in descending order.

4. Spending Analysis
To identify the top 10 members based on their total spending, the query joins the "member" and "statement" tables. It calculates the sum of statement amounts for each member and presents the results in descending order.

5. Transaction Details for Member 10000
This query retrieves all the transaction details for a specific member (member_no = 10000). It combines the "member" and "payment" tables to fetch the member's information, payment amount, and payment date.

6. Member Filtering by Last Name
This query retrieves all members whose last names start with the letter "A". It uses the "LIKE" operator with the pattern 'A%' to match the desired names.