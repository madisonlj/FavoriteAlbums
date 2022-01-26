--queries

--How can we display all information contained in the "Artists" table?
SELECT * FROM artists

--Display all information contained in the "Albums" table.
SELECT * FROM albums

--We want to see the names of all albums released before 2020.
SELECT album_title FROM albums
WHERE release_date < '2020-01-01' 

/* Pull up the artist names, their birthdates, and the genres of their albums. 
Please display all of this information in one table. */
SELECT genre, birthdate, a.artist_name
FROM albums
INNER JOIN artists a ON a.artist_name = albums.artist_name

/* What is the name of the youngest artist?
Answer = Dua Lipa */
SELECT artist_name, birthdate
FROM artists
ORDER BY birthdate desc

--Please pull the earliest birthdate we have in our system.
SELECT MIN(birthdate)
FROM artists

/* Display the name and birthdate of the oldest artist. Try to include 
GROUP BY in your query */
SELECT artist_name, MIN(birthdate)
FROM artists
GROUP BY artist_name
LIMIT 1

/* We want to know the total number of albums we have in the database.
Answer = 5 */
SELECT COUNT(albums) 
FROM albums 

/* What number does the artist_id column add up to in the "Artists" table?
Answer = 15 */
SELECT SUM(artist_id)
FROM artists

--Please show us a list of album genres and album titles in one column. 
SELECT genre
FROM albums
UNION
SELECT album_title
FROM albums 

