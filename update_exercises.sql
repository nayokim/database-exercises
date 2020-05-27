-- Write SELECT statements to output each of the following with a caption:
Use codeup_test_db;

Select 'All the albums in your table' as 'exercise1';

-- All albums in your table.
select * from albums;

-- All albums released before 1980
Select 'All the albums before 1980' as 'exercise 2';
select name from albums where release_date <= 1980;

-- All albums by Michael Jackson
Select 'All the albums where the artist is michael jackson' as 'exercise 3';
select * from albums where artist = 'Michael Jackson';

-- After each SELECT add an UPDATE statement to:
-- Make all the albums 10 times more popular (sales * 10)
Select 'Make all the albums 10 times more popular' as 'exercise 4';

update albums
set sales = sales * 10;

select * from albums;
-- Move all the albums before 1980 back to the 1800s.
Select 'Move all the albums before 1980 back to 1800' as 'exercise 5';

update albums
set release_date = release_date - 100
where release_date < 1980;

select * from albums;

-- Change 'Michael Jackson' to 'Peter Jackson'
Select 'Change ''Michael Jackson'' to ''Peter Jackson' as 'exercise 6';

update albums
set artist = 'Peter Jackson'
where artist = 'Michael Jackson';

select * from albums;
-- Add SELECT statements after each UPDATE so you can see the results of your handiwork.