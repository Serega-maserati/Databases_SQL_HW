-- 181. Employees Earning More Than Their Managers (Easy)
-- https://leetcode.com/problems/employees-earning-more-than-their-managers/
-- Идея: self-join таблицы Employee: e1 — сотрудник, e2 — его руководитель.

SELECT e1.name AS "Employee"
FROM Employee e1
JOIN Employee e2 ON e1.managerId = e2.id
WHERE e1.salary > e2.salary;
