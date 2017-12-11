USe codeup_test_db;

TRUNCATE albums;

-- Find out the id of the album of Nirvana
SELECT * from albums where release-date > 1991;
SELECT * from albums WHERE genre = 'disco';
SELECT * FROM albums WHERE artist = 'Madonna';

DELETE FROM albums WHERE id = 28;


