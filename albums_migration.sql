USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(100) DEFAULT 'NONE',
    name VARCHAR(100) NOT NULL,
    release_date INT NOT NULL,
    sales DECIMAL (6,3) UNSIGNED NOT NULL,
    genre varchar (100),
    PRIMARY KEY (id)
);
