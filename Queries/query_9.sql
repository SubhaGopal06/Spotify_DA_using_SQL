-- 9. For each album, calculate the total views of all associated tracks.

SELECT album, track, SUM(views)
FROM spotify
GROUP BY 1,2
ORDER BY 3 DESC;
