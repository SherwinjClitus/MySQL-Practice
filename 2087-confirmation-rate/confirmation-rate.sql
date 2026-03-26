SELECT S.user_id,
       ROUND(IFNULL(SUM(IF(C.action = 'timeout',0,1)) / COUNT(C.action),0),2) AS confirmation_rate
FROM Signups S
LEFT JOIN Confirmations C
ON S.user_id = C.user_id
GROUP BY S.user_id;