-- How many lifetime hits does Barry Bonds have?

-- Expected result:
-- 2935

SELECT players.id, players.first_name, players.last_name, SUM(stats.hits)
FROM stats
INNER JOIN players ON players.id = stats.player_id
WHERE players.first_name = "Barry"
AND players.last_name = "Bonds";
