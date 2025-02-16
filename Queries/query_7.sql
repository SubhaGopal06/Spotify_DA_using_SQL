-- 7. Find the top 5 tracks with the highest energy values.

SELECT track, MAX(energy)
FROM spotify
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5;
