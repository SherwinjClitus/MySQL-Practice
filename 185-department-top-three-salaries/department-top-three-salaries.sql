# Write your MySQL query statement below
SELECT
    t.Department,
    t.Employee,
    t.salary
FROM(   
SELECT
    D.name as Department,
    E.name as Employee,
    E.salary,
    DENSE_RANK() OVER(PARTITION BY D.name ORDER BY salary DESC) as RANKING
FROM Employee as E
LEFT JOIN Department as D
ON E.departmentId = D.id
) t
WHERE t.RANKING<=3;
