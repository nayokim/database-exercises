use codeup_test_db;
show tables;
drop table if exists roles;
drop table if exists users;


CREATE TABLE roles (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       PRIMARY KEY (id)
);

CREATE TABLE users (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       email VARCHAR(100) NOT NULL,
                       role_id INT UNSIGNED DEFAULT NULL,
                       PRIMARY KEY (id),
                       FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 2),
('sally', 'sally@example.com', 3),
('adam', 'adam@example.com', 3),
('jane', 'jane@example.com', null),
('mike', 'mike@example.com', null);

# 6 users
select *
    from users;

select * from roles;

#INNER JOIN -  4 users - this is because 2 users in the users table do not have IDs
select *
from users as u
join roles as r on u.role_id = r.id;

select u.id, u.name, u.email, r.name
from users as u
         join roles as r on u.role_id = r.id;

describe users;

select *
from users;

select *
from roles;

#LEFT JOIN - from is the left, in this case - users
select *
from users u
left join roles r on u.role_id = r.id;

#RIGHT JOIN
select *
from  users u
right join roles r on u.role_id = r.id;

use employees;

#find the full name and dept for the employee with an id of 10001
select concat(e.first_name,' ', e.last_name) as 'fullname', d.dept_name
from employees as e
join dept_emp as de on de.emp_no = e.emp_no
join departments as d on d.dept_no = de.dept_no
where e.emp_no = 10001;

create database join_test_db;

use join_test_db;
CREATE TABLE roles (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       PRIMARY KEY (id)
);

CREATE TABLE users (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       email VARCHAR(100) NOT NULL,
                       role_id INT UNSIGNED DEFAULT NULL,
                       PRIMARY KEY (id),
                       FOREIGN KEY (role_id) REFERENCES roles (id)
);
select * from roles;

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

select * from users;
INSERT INTO users (name, email, role_id) VALUES
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 2),
('sally', 'sally@example.com', 3),
('adam', 'adam@example.com', 3),
('jane', 'jane@example.com', null),
('mike', 'mike@example.com', null);

select users.name as user_name, roles.name as role_name
from users
         join roles on users.role_id = roles.id;

select users.name as user_name, roles.name as role_name
from users
         left join roles on users.role_id = roles.id;

SELECT users.name AS user_name, roles.name AS role_name
FROM users
         RIGHT JOIN roles ON users.role_id = roles.id;

#start of exercise

insert into users (name, email, role_id) values
('willump', 'willump@willump.com', 1 ),
('nunu', 'nunu@willump.com', 2),
('cookie', 'cookie@willump.com', 3),
('monster', 'monster@willump.com',null);

select * from users;
#inner join
select users.name as user_name, roles.name as role_name
from users
join roles on users.role_id = roles.id;

#left join
select users.name as user_name, roles.name as role_name
from users
left join roles on users.role_id = roles.id;

#right join
select users.name as user_name, roles.name as role_name
from users
right join roles on users.role_id = roles.id;

select * from roles;
select * from users;

#count how many people we have in each role
select count(users.role_id),roles.name as role_name
from users
right join roles on users.role_id = roles.id
group by roles.id;














