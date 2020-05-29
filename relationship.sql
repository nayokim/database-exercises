
use employees;
show tables;

describe departments;
describe dept_emp;
describe dept_manager;
describe employees;
describe salaries;
describe titles;

use codeup_test_db;
describe albums;
alter table albums
    add unique (name, artist);
select * from albums;


insert into albums (artist,name, release_date, sales, genre)
values ('Peter Jackson','Thriller', 1980, 20, 'Pop');
select * from albums;

