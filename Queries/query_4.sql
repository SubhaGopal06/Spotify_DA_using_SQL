-- 4. Find all tracks that belong to the album type single.

SELECT * FROM spotify 
WHERE album_type ILIKE 'single'; --ILIKE is nothing but '='
