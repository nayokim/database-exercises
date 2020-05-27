-- Write SELECT statements for:
-- Albums released after 1991
select name
from albums
where release_date >=1991;

SELECT * FROM albums
WHERE release_date > '1991';

-- Albums with the genre 'disco'

select name
from albums
where genre = 'disco';

SELECT * FROM albums
WHERE genre LIKE '%disco%';
-- Albums by 'Whitney Houston' (...or maybe an artist of your choice)

select artist
from albums
where artist = 'Whitney Houston';

SELECT * FROM albums
WHERE artist LIKE '%whitney houston%';

delete from albums where release_date = 1991;

delete from albums where genre = 'disco';

delete from albums where artist like '%whitney houston%';

