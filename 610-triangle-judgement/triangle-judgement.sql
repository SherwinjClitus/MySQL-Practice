# Write your MySQL query statement below
-- SELECT * ,
--     CASE
--         WHEN x+y>z AND y+z>x AND x+z>y THEN 'Yes'
--         ELSE 'No'
--     END AS triangle
-- FROM Triangle;   

SELECT *,
IF(x+y>z AND y+z>x AND x+z>y,'Yes','No') AS triangle
FROM Triangle
