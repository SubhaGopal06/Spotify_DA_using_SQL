-- 13. Use a WITH clause to calculate the difference between the highest and lowest energy values for tracks in each album.

WITH cte --WITH is used to create temporary tables
AS
(SELECT album, 
	MAX(energy) as highest_energy,
	MAX(energy) as lowest_energy
FROM spotify
GROUP BY 1
)
SELECT album, highest_energy - lowest_energy as energy_diff
FROM cte
ORDER BY 2 DESC;
