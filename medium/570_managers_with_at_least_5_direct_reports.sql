-- 570. Managers with at Least 5 Direct Reports (Medium)
-- https://leetcode.com/problems/managers-with-at-least-5-direct-reports/

SELECT e2.name
FROM Employee e1
JOIN Employee e2 ON e2.id = e1.managerId
GROUP BY e2.id, e2.name
HAVING COUNT(e1.id) >= 5;
