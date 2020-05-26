USE codeup_test_db;

SELECT name
FROM albums
WHERE artist = 'Pink Floyd';

select release_date
from albums
where name ="Sgt. Pepper's Lonely Hearts Club Band";

select genre
from albums
where name = 'Nevermind';

select name
from albums
where release_date = '1990';

select name
from albums
where sales < '20';

SELECT `name`, genre
FROM albums
WHERE genre = 'Rock';


SELECT name, genre
FROM albums
WHERE genre LIKE '%rock%';