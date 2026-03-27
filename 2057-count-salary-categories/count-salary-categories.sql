SELECT 
      cat.category,
      COUNT(t.category) AS accounts_count
FROM
(SELECT 'Low Salary' AS category
UNION
SELECT 'Average Salary' AS category
UNION 
SELECT 'High Salary' AS category) 
AS cat
LEFT JOIN
(SELECT *,
CASE
    WHEN income < 20000 THEN 'Low Salary'
    WHEN income BETWEEN 20000 AND 50000 THEN 'Average Salary'
    ELSE 'High Salary'
END AS category  
FROM Accounts) AS t
ON cat.category = t.category
GROUP BY category;