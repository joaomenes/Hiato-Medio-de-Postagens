SELECT 
user_id,
    EXTRACT(DAY FROM (MAX(post_date) - MIN(post_date))) as dias_passados
FROM posts
where post_date > '2021-01-01'
GROUP BY user_id
HAVING COUNT(*) > 1;