CREATE TABLE IF NOT EXISTS genres(
	id serial PRIMARY KEY, 
	genre_name varchar(50) NOT NULL UNIQUE);
	
CREATE TABLE IF NOT EXISTS performers(
	id serial PRIMARY KEY, 
	performers_name varchar(50) NOT NULL UNIQUE);
	
CREATE TABLE IF NOT EXISTS genres_performers(
	genres_id integer REFERENCES genres(id), 
	performers_id integer REFERENCES performers(id), 
	CONSTRAINT pk_genres_performers PRIMARY KEY (genres_id, performers_id));
	
CREATE TABLE IF NOT EXISTS albums(
	id serial PRIMARY KEY, 
	album_title varchar(50) NOT NULL, 
	year_issue integer NOT NULL);
	
CREATE TABLE IF NOT EXISTS performers_albums(
	albums_id integer REFERENCES albums(id), 
	performers_id integer REFERENCES performers(id), 
	CONSTRAINT pk_performers_albums PRIMARY KEY (albums_id, performers_id));
	
CREATE TABLE IF NOT EXISTS tracks(
	id serial PRIMARY KEY, 
	track_name varchar(50) NOT NULL, 
	track_duration time NOT NULL, 
	album_id integer REFERENCES albums(id));
	
CREATE TABLE IF NOT EXISTS compilations(
	id serial PRIMARY KEY, 
	compilation_name varchar(50) NOT NULL, 
	year_issue integer NOT NULL);
	
CREATE TABLE IF NOT EXISTS tracks_compilation(
	track_id integer REFERENCES tracks(id), 
	compilation_id integer REFERENCES compilations(id), 
	CONSTRAINT pk_track_compilation PRIMARY KEY (track_id, compilation_id));