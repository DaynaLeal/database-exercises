USE codeup_test_db;

SELECT 'All Albums in Table => ', record_name FROM albums;

SELECT 'The Albums Released before 1980 => ', record_name, release_date FROM albums WHERE release_date < '1980';

SELECT 'All Michael Jackson Albums in Table => ', record_name FROM albums WHERE artist_name = 'Michael Jackson';