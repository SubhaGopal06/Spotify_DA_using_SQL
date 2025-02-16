-- 8. List all tracks along with their views and likes where official_video = TRUE.

SELECT track, SUM(views) as total_views, SUM(likes) as total_likes
FROM spotify
WHERE official_video = 'true'
GROUP BY 1
ORDER BY 2 DESC;
