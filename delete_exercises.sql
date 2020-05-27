-- Write SELECT statements for:
-- Albums released after 1991
select * from albums where release_date > 1991;
-- Albums with the genre 'disco'
select * from albums where genre = 'disco';
-- Albums by 'Whitney Houston' (...or maybe an artist of your choice)
select * from albums where artist = 'Whitney Houston';
select * from albums where artist like '%whitney houston%';
-- Make sure to put appropriate captions before each SELECT.
-- Convert the SELECT statements to DELETE.

delete from albums where release_date > 1991;
delete from albums where genre = 'disco';
delete from albums where artist like '%whitney houston%';