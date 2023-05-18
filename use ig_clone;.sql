use ig_clone;
show tables;

/* new comer user */
SELECT * FROM users
ORDER BY created_at desc;

/*What day of the week do most users register */
SELECT 
dayname(created_at) as Date,
count(*) as countdate
FROM users 
group by Date
ORDER BY countdate desc;

/*mostly user used hashtag*/
SELECT tag_name, COUNT(tag_name) AS total_duplicates
FROM tags
GROUP BY tag_name
ORDER BY total_duplicates DESC;

/*Find users who liked per single photo on the site*/
SELECT users.id,username, COUNT(users.id) As total_likes
FROM users
JOIN likes ON users.id = likes.user_id
GROUP BY users.id
HAVING total_likes = (SELECT COUNT(*) FROM photos);





