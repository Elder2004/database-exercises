USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) NOT NULL,
    name  VARCHAR(100) NOT NULL,
    release_date  INT NOT NULL,
    sales FLOAT(5,2) NOT NULL,
    genre CHAR(255) NOT NULL,
    PRIMARY KEY (id)
);
