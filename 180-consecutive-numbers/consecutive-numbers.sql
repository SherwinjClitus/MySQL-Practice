WITH cte AS
(SELECT
*,
LEAD(num,1) OVER() AS next1,
LEAD(num,2) OVER() AS next2
FROM Logs)


SELECT DISTINCT num AS ConsecutiveNums
FROM cte
WHERE num = next1 AND num = next2;