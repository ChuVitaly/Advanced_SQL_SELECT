CREATE TABLE IF NOT EXISTS Genre (
	id SERIAL PRIMARY KEY,
	title VARCHAR(60) NOT NULL,
	description TEXT
);

CREATE TABLE IF NOT EXISTS Artist (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	country VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS Album (
	id SERIAL PRIMARY KEY,
	title VARCHAR(60) NOT NULL,
	years VARCHAR(10)
);


CREATE TABLE IF NOT EXISTS Collection (
	id SERIAL PRIMARY KEY,
	title VARCHAR(60) NOT NULL,
	years VARCHAR(10)
);

CREATE TABLE IF NOT EXISTS Track (
	id SERIAL PRIMARY KEY,
	album_id INT NOT NULL REFERENCES Album(id),
	title VARCHAR(60) NOT NULL,
	duration INT,
	years VARCHAR(10)
);

CREATE TABLE IF NOT EXISTS Genre_artist (
	genre_id INT NOT NULL REFERENCES Genre(id),
	artist_id INT NOT NULL REFERENCES Artist(id),
	CONSTRAINT pk PRIMARY KEY  (genre_id, artist_id)
);

CREATE TABLE IF NOT EXISTS Artist_album (
	artist_id INT NOT NULL REFERENCES Artist(id),
	album_id INT NOT NULL  REFERENCES Album(id),
	CONSTRAINT fk PRIMARY KEY  (artist_id, album_id)	
);

CREATE TABLE IF NOT EXISTS Collection_track (
collection_id INT NOT NULL REFERENCES Collection(id),
track_id INT NOT NULL REFERENCES Track(id),
CONSTRAINT col_pk PRIMARY KEY  (collection_id, track_id)
);