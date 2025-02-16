-- 5. Count the total number of tracks by each artist.

SELECT artist, COUNT(*) as total_no_songs 
FROM spotify 
GROUP BY artist
ORDER BY 2 DESC; 
--1 refers to first selected column(artist)
--2 refers to second selected column()total_no_songs
