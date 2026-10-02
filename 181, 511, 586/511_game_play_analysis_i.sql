-- 511. Game Play Analysis I (Easy)
-- https://leetcode.com/problems/game-play-analysis-i/
-- Идея: группировка по игроку и минимальная дата входа.

SELECT player_id, MIN(event_date) AS first_login
FROM Activity
GROUP BY player_id;
