USE codeup_test_db;

SELECT 'The Albums Released after 1991 => ', record_name, release_date FROM albums WHERE release_date > '1991';
DELETE FROM albums WHERE release_date > '1991';

SELECT 'The Albums of Genre ''Disco'' => ', record_name, genre FROM albums WHERE genre = 'disco';
DELETE FROM albums WHERE genre = 'disco';

SELECT 'All Whitney Houston Albums in Table => ', record_name, artist_name FROM albums WHERE artist_name = 'Whitney Houston';
DELETE FROM albums WHERE artist_name = 'Whitney Houston';

SELECT 'All Albums in Table => ', artist_name, record_name, release_date, genre FROM albums;