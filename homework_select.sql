SELECT a.album_title, a.year_issue 
FROM albums a 
WHERE a.year_issue = '2018';

SELECT t.track_name, t.track_duration 
FROM tracks t 
LIMIT 1;

SELECT t.track_name
FROM tracks t 
WHERE t.track_duration >= '03:30:00';

SELECT c.compilation_name 
FROM compilations c 
WHERE c.year_issue BETWEEN 2018 AND 2020;

SELECT p.performers_name 
FROM performers p 
WHERE p.performers_name NOT LIKE '% %';

SELECT track_name 
FROM tracks
WHERE track_name LIKE '%%My%%';



