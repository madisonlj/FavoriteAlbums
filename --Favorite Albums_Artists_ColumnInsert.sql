--Artists Table: column inserts
INSERT INTO artists(artist_name, birthdate)
VALUES
('Mariah Carey','1969-03-27')

INSERT INTO artists(artist_name, birthdate)
VALUES
('Sango','1991-10-01')

INSERT INTO artists(artist_name, birthdate)
VALUES
('Drake','1986-10-24')

INSERT INTO artists(artist_name, birthdate)
VALUES
('Halsey','1994-09-29')

INSERT INTO artists(artist_name, birthdate)
VALUES
('Dua Lipa','1995-08-22')

/* Tips for this step: if you make a mistake, update info in column using following syntax example-
   UPDATE artists
   SET birthdate = '1969-03-17'
   WHERE artist_id = 1 */



/* Flaws discovered during this step: 

DATE data type doesn't allow 00's.
Decided to replace one artist (band) with a solo artist in order to get a full 
birth date. Bands usually only have form dates (so year only), not a birth date. 
I couldn't leave it blank due to a NOT NULL column constraint. Next time might want 
to use three separate nullable columns for day (tinyint), month (tinyint) and year (smallint) 
in the case that there may be incomplete dates that need to be entered OR could remove
NOT NULL constraint. example-

ALTER TABLE artists
ALTER COLUMN birthdate
DROP not null

then insert a form date column with only year for the band. example- 
ALTER TABLE artists
ADD form_date INT  */