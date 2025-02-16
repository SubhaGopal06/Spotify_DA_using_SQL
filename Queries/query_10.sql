-- 10.Retrieve the track names that have been streamed on Spotify more than YouTube.

SELECT * FROM 
(SELECT 
	track,
	COALESCE(SUM(CASE WHEN most_played_on = 'Youtube' THEN stream END),0) as streamed_on_youtube,
	COALESCE(SUM(CASE WHEN most_played_on = 'Spotify' THEN stream END),0) as streamed_on_youtube
FROM spotify
GROUP BY 1
GROUP BY 1
)--coalesce removes null values in the columns
as t1
WHERE stream_on_spotify > stream_on_youtube AND streamed_on_youtube <> 0;
