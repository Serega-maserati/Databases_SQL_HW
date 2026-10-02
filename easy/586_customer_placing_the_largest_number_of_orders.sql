-- 586. Customer Placing the Largest Number of Orders (Easy)
-- https://leetcode.com/problems/customer-placing-the-largest-number-of-orders/
-- Идея: считаем заказы по каждому клиенту, сортируем по убыванию, берём первого.

SELECT customer_number
FROM Orders
GROUP BY customer_number
ORDER BY COUNT(order_number) DESC
LIMIT 1;

-- Follow-up: если лидеров несколько (одинаковое число заказов),
-- LIMIT 1 вернёт только одного. Вариант, который вернёт всех:
--
SELECT customer_number
FROM Orders
GROUP BY customer_number
HAVING COUNT(*) = (
     SELECT COUNT(*)
     FROM Orders
     GROUP BY customer_number
     ORDER BY COUNT(*) DESC
     LIMIT 1);
-- подзапрос в HAVING
