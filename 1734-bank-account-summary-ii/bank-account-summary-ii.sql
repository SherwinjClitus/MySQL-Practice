# Write your MySQL query statement below
SELECT u.name as NAME, sum(t.amount) as BALANCE
FROM Users as u
left join Transactions as t
ON u.account = t.account
GROUP BY u.account
HAVING BALANCE>10000;