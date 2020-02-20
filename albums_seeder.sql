CREATE DATABASE IF NOT EXISTS codeup_test_db;

USE codeup_test_db;

DESCRIBE albums;

TRUNCATE albums;

INSERT INTO albums(artist_name, record_name, release_date, sales, genre)
VALUES
       ('Michael Jackson', 'Thriller', '1982', 66, 'pop, post-disco, funk, rock'),
       ('AC/DC', 'Back in Black', '1980', 50, 'Hard rock'),
       ('Meat Loaf', 'Bat Out of Hell', '1977', 50, 'hard rock, glam rock, heavy metal'),
       ('Pink Floyd', 'The Dark Side of the Moon', '1973', 45, 'progressive rock'),
       ('Whitney Houston', 'The Bodyguard', '1992', 45, 'R&B, soul, pop, soundtrack'),
       ('Eagles', 'Their Greatest Hits (1971–1975)', '1976', 42, 'country rock, soft rock, folk rock'),
       ('Bee Gees', 'Saturday Night Fever', '1977', 40, 'disco'),
       ('Fleetwood Mac', 'Rumours', '1977', 40, 'soft rock'),
       ('Shania Twain', 'Come On Over', '1997', 40, 'country, pop'),
       ('Various Artists', 'Grease: The Original Soundtrack from the Motion Picture', '1978', 14.4, 'Rock and roll'),
       ('Led Zeppelin', 'Led Zeppelin IV', '1971', 29.0, 'Hard rock, heavy metal, folk rock'),
       ('Michael Jackson', 'Bad', '1987', 22.2, 'Pop, rhythm and blues, funk and rock'),
       ('Alanis Morissette', 'Jagged Little Pill', '1995', 24.4, 'Alternative rock'),
       ('Michael Jackson', 'Dangerous', '1991', 17.3, 'New jack swing, R&B and pop'),
       ('Celine Dion', 'Falling into You', '1996', 20.2, 'Pop, soft rock'),
       ('Eagles', 'Hotel California', '1976', 31.5, 'Soft rock'),
       ('The Beatles', 'Sgt. Pepper''s Lonely Hearts Club Band', '1967', 18.2, 'Rock'),
       ('Various artists', 'Dirty Dancing', '1987', 17.9, 'Pop, rock, R&B'),
       ('Adele', '21', '2011', 25.3, 'Pop, soul'),
       ('Celine Dion', 'Let''s Talk About Love', '1997', 19.3, 'Pop, soft rock'),
       ('The Beatles', '1', '2000', 23.4, 'Rock'),
       ('ABBA', 'Gold: Greatest Hits', '1992', 23.0, 'Pop, disco'),
       ('The Beatles', 'Abbey Road', '1969', 14.4, 'Rock'),
       ('Bruce Springsteen', 'Born in the U.S.A.', '1984', 19.6, 'Heartland rock'),
       ('Dire Straits', 'Brothers in Arms', '1985', 17.7, 'Roots rock, blues rock, soft rock'),
       ('James Horner', 'Titanic: Music from the Motion Picture', '1997', 18.1, 'Film score'),
       ('Metallica', 'Metallica', '1991', 25.2, 'Heavy Metal'),
       ('Nirvana', 'Nevermind', '1991', 16.7, 'Grunge, alternative rock'),
       ('Pink Floyd', 'The Wall', '1979', 18.7, 'Progressive rock'),
       ('Santana', 'Supernatural', '1999', 20.5, 'Latin rock'),
       ('Madonna', 'The Immaculate Collection', '1990', 19.4, 'Pop, dance'),
       ('Guns N'' Roses', 'Appetite for Destruction', '1987', 21.9, 'Hard rock');

SELECT * from albums;