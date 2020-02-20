USE codeup_test_db;

SELECT 'All Albums in Table => ', record_name, sales FROM albums;
UPDATE albums SET sales = (sales * 10);
SELECT 'All Albums in Table => ', record_name, sales FROM albums;

SELECT 'The Albums Released before 1980 => ', record_name, release_date FROM albums WHERE release_date < '1980';
UPDATE albums SET release_date = (release_date - 100) WHERE release_date < '1980';
SELECT 'The Albums Released before 1880 => ', record_name, release_date FROM albums WHERE release_date < '1880';

SELECT 'All Michael Jackson Albums in Table => ', record_name, artist_name FROM albums WHERE artist_name = 'Michael Jackson';
UPDATE albums SET artist_name = 'Peter Jackson' WHERE artist_name = 'Michael Jackson';
SELECT 'All Renamed Michael Jackson Albums in Table => ', record_name, artist_name FROM albums WHERE artist_name = 'Peter Jackson';