SELECT ROUND(SUM(T.tiv_2016),2) AS tiv_2016
FROM 
(SELECT 
    tiv_2016,
    COUNT(*) OVER (PARTITION BY tiv_2015) AS tivcnt,
    COUNT(*) OVER (PARTITION BY lat,lon) AS latloncnt
FROM Insurance) AS T
WHERE tivcnt > 1 AND latloncnt = 1


