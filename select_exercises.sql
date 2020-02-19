USE codeup_test_db;

SELECT 'All Pink Floyd Albums in Table => ', record_name FROM albums WHERE artist_name = 'Pink Floyd';

SELECT 'Year Sgt. Pepper''s Lonely Hearts Club Band was released => ', release_date FROM albums WHERE record_name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT 'The Genre for Nevermind => ', genre FROM albums WHERE record_name = 'Nevermind';

SELECT 'The Albums Released in the 1990s => ', record_name, release_date FROM albums WHERE release_date LIKE '199%';

SELECT 'The Albums That Had Less Than 10 Million Certified Sales => ', record_name, sales FROM albums WHERE sales < 20.0;

SELECT 'The Albums of Genre ''Rock'' => ', record_name, genre FROM albums WHERE genre = 'rock';
# SELECT 'The Albums of Genre that Contains ''Rock'' => ', record_name, genre FROM albums WHERE genre LIKE 'rock%';
