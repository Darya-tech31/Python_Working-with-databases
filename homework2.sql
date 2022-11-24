CREATE TABLE IF NOT EXISTS еmployees (
	id serial PRIMARY KEY, 
	еmployee_name varchar(100) NOT NULL UNIQUE, 
	department varchar(100) NOT NULL UNIQUE,
	supervisor_id integer REFERENCES еmployees(id));