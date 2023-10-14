-- TABLES
-- artists
-- albums
-- tracks

-- QUERY1
-- Write a query to get all records from the artists table
SELECT *
FROM artists;
-- QUERY2
-- Retrieve all tracks which have a duration less than 180 seconds (3 minutes).
SELECT * 
FROM tracks
WHERE duration < 180;
-- QUERY3
-- Retrieve all artists from the United States.
SELECT *
FROM artists
WHERE country is 'USA';
-- QUERY4
-- Retrieve all albums released after the year 2000.
SELECT *
FROM albums
WHERE release_year > 2000;
-- QUERY5
-- List tracks that were released before January 1st, 1990.
SELECT *
FROM tracks
WHERE release_date < '1990-1-1';
-- QUERY6
-- Retrieve all artists who debuted in the 90s.
SELECT *
FROM artists
WHERE debut_year BETWEEN 1990 AND 2000;
-- QUERY7
-- List albums that have more than 10 tracks.
SELECT *
FROM albums
WHERE total_tracks > 10;
-- QUERY8
-- List artists who have more than 5 albums and are from 'UK'.
SELECT *
FROM artists
WHERE (total_albums > 5) AND (country is 'UK');
-- QUERY9
-- Retrieve tracks with over 500,000 play counts.
SELECT *
FROM tracks
WHERE play_count > 500000;
-- QUERY10
-- Retrieve albums released between 1995 and 2005.
SELECT * 
FROM albums
WHERE release_year BETWEEN 1995 AND 2005;
-- QUERY11
-- List artists who have a debut year before 1980 or after 2000.
SELECT *
FROM artists
WHERE debut_year < 1980 OR debut_year > 2000;
-- QUERY12
-- List tracks that have the word "love" in their name.
SELECT * 
FROM tracks
WHERE name like '%love%';
-- QUERY13
-- Retrieve albums from the label 'Columbia' that have been played more than 1 million times.
SELECT * 
FROM albums
WHERE (label is 'Columbia') AND (total_play_count > 1000000);
-- QUERY14
-- List tracks with a duration between 200 and 300 seconds.
SELECT *
FROM tracks
WHERE duration BETWEEN 200 AND 300;
-- QUERY15
-- Retrieve all artists from 'Australia' or 'New Zealand'.
SELECT * 
FROM artists
WHERE country IN ('Australia', 'New Zealand');
-- QUERY16
-- List albums that have less than 8 tracks and more than 500,000 total play counts.
SELECT * 
FROM albums
WHERE (total_tracks < 8) AND (total_play_count > 500000);
-- QUERY17
-- List tracks released after January 1st, 2000 that feature other artists.
SELECT *
FROM tracks
WHERE (release_date > '2000-1-1') AND (feature_artists IS NOT NULL);
-- QUERY18
-- Retrieve artists who debuted in the 80s and have more than 3 albums.
SELECT * 
FROM artists
WHERE (debut_year BETWEEN 1980 AND 1990) AND (total_albums > 3);

-- QUERY19
-- List tracks that have the words "night" or "day" in their name.
SELECT * 
FROM tracks
WHERE name LIKE '%night%' OR name LIKE '%day%';

-- QUERY20
-- Retrieve albums where the average play count per song is greater than 100,000.
SELECT * 
FROM albums
WHERE ((total_play_count / total_tracks) > 100000);
-- QUERY21
-- List tracks with play counts between 100,000 and 500,000.
SELECT *
FROM tracks
WHERE play_count BETWEEN 100000 AND 500000;
-- QUERY22
-- Retrieve artists who are not from 'US' or 'UK'.
SELECT *
FROM artists
WHERE country NOT IN ('US', 'UK');
-- QUERY23
-- List albums that have a cover image URL and more than 8 tracks.
SELECT *
FROM albums
WHERE (cover_image_url IS NOT NULL) AND (total_tracks > 8);
-- QUERY24
-- List tracks with a duration less than 4 minutes and have the word "boy" in their lyrics.
SELECT * 
FROM tracks
WHERE (duration < 240) AND (lyrics LIKE '%boy%');
-- QUERY25
-- Retrieve artists who have a bio containing the word "metal" AND debuted after 1970 but before 2000 AND are from either 'USA' or 'UK'.
SELECT * 
FROM artists
WHERE (bio LIKE '%metal%') AND (debut_year BETWEEN 1970 AND 2000) AND (country IN ('USA', 'UK'));
-- QUERY26
-- List albums that have play counts not between 500,000 and 1,500,000 AND were released after 2000.
SELECT *
FROM albums
WHERE (total_play_count NOT BETWEEN 500000 AND 1500000) AND (release_year > 2000);
-- QUERY27
-- Retrieve tracks that were released on a date between January 1st, 1995 and December 31st, 2005 AND either have more than 1,500,000 play counts OR have the word "world" in their name.
SELECT * 
FROM tracks
WHERE (release_date BETWEEN '1995-01-01' AND '2005-12-31') AND (play_count > 1500000 OR (lyrics LIKE '%world%'));
-- QUERY28
-- List artists with names starting with "The" AND have either debuted before 1970 OR have more than 8 albums.
SELECT * 
FROM artists
WHERE (name LIKE 'The%') AND (debut_year < 1970 OR total_albums > 8);
-- QUERY29
-- List tracks where the name contains the word "love" AND the duration is less than 3 minutes or the name mentions "world" AND the duration is greater than 3 minutes.
SELECT *
FROM tracks
WHERE (name LIKE '%love%' AND duration < 180) OR (name LIKE '%world%' AND duration > 180);
-- QUERY30
-- Retrieve albums released in years that are multiples of 5.
SELECT *
FROM albums
WHERE release_year % 5 = 0;