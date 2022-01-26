--Favorite Albums Tables
CREATE TABLE artists(artist_id SERIAL PRIMARY KEY,
			artist_name VARCHAR (50) NOT NULL,
			birthdate DATE NOT NULL
			 )
CREATE TABLE albums(album_id SERIAL PRIMARY KEY,
			album_title VARCHAR (50) NOT NULL,
			artist_id INTEGER REFERENCES artists(artist_id),
			artist_name VARCHAR (50) NOT NULL,
			genre VARCHAR (50) NOT NULL, 
			release_date DATE NOT NULL,
			record_label VARCHAR (50)
			 )