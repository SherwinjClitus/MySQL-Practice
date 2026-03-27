
(SELECT
    U.name AS results
FROM Users U
JOIN MovieRating M
ON U.user_id = M.user_id
GROUP BY M.user_id
ORDER BY COUNT(*) DESC,U.name ASC 
LIMIT 1)
UNION ALL
(SELECT t2.title
FROM
(SELECT 
    AVG(M.rating) AS A,
    Mo.title AS title
FROM Movies Mo
JOIN MovieRating M
ON Mo.movie_id = M.movie_id
WHERE M.created_at >= '2020-02-01' AND M.created_at < '2020-03-01'
GROUP BY M.movie_id) t2
ORDER BY A DESC,title ASC
LIMIT 1);