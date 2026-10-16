-- 1164. Product Price at a Given Date (Medium)
-- https://leetcode.com/problems/product-price-at-a-given-date/

WITH all_products AS (
    SELECT DISTINCT product_id
    FROM Products
),
prices AS (
    SELECT p1.product_id, p1.new_price
    FROM Products p1
    JOIN (
        SELECT product_id, MAX(change_date) AS last_date
        FROM Products
        WHERE change_date <= '2019-08-16'
        GROUP BY product_id
    ) p2 ON p1.product_id = p2.product_id
        AND p1.change_date = p2.last_date
)
SELECT a.product_id, COALESCE(p.new_price, 10) AS price
FROM all_products a
LEFT JOIN prices p ON p.product_id = a.product_id;
