# Write your MySQL query statement below
SELECT
    t.Department,
    t.Employee,
    t.salary
FROM
(
SELECT
    D.name as Department,
    E.name as Employee,
    E.salary,
RANK() OVER(PARTITION BY D.name ORDER BY salary DESC) as Ranks
FROM Employee as E
LEFT JOIN Department D
ON E.departmentId = D.id
)t 
WHERE t.Ranks = 1;
