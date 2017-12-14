use employees;

DESCRIBE employees;
DESCRIBE salaries;
DESCRIBE dept_manager;

use codeup_test_db;
DESCRIBE albums;
ALTER TABLE  albums ADD  UNIQUE (name,artist);

select * from albums;

INSERT INTO albums (name, artist, release_date, sales, genre)
    VALUES ('Thrillers', 'Peter Jackson', 1990, 23,'Pop');
