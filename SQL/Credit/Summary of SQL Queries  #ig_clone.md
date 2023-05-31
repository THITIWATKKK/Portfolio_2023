# Summary of SQL Queries  #ig_clone
In this project, I have utilized SQL queries to retrieve and analyze data from the IG_Clone database. The following queries have been executed:

1. Newcomer User Analysis
To identify the newest users on the platform, the query selects all columns from the "users" table and sorts the results based on the "created_at" column in descending order.

2. Day of the Week Analysis
This query determines which day of the week has the highest number of user registrations. It uses the "dayname" function to extract the day of the week from the "created_at" column and calculates the count for each day. The results are then sorted in descending order based on the count.

3. Popular Hashtags Analysis
To find the most frequently used hashtags by users, the query combines the "tags" table and counts the occurrences of each unique tag. The results are sorted in descending order based on the total number of duplicates.

4. User Likes Analysis
This query identifies users who have liked every single photo on the site. It joins the "users" and "likes" tables and counts the number of likes for each user. The results are filtered to only include users with the same total number of likes as the total count of photos on the site.