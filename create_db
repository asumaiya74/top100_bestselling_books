DROP DATABASE IF EXISTS `top100_bestselling_books`; 
CREATE SCHEMA `top100_bestselling_books`;
USE top100_bestselling_books;

-- -------------------------------------------------------
-- TABLE: Creating the author table 
-- -------------------------------------------------------
CREATE TABLE authors (
    author_id INT AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    PRIMARY KEY (author_id)
);

-- -------------------------------------------------------
-- TABLE: Create the Genres table
-- -------------------------------------------------------
CREATE TABLE genres (
    genre_id INT AUTO_INCREMENT,
    genre_name VARCHAR(50) NOT NULL,
    PRIMARY KEY (genre_id)
);

-- -------------------------------------------------------
-- TABLE: Create the Books table
-- -------------------------------------------------------
CREATE TABLE books (
    book_id INT AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
	author_id INT,
    hard_copy varchar (10),
    paper_copy varchar (10), 
    eBook varchar (10), 
    audioCD varchar (10), 
    overall_rating DECIMAL(10, 1) DEFAULT NULL,
    num_of_reviews INT DEFAULT NULL,
    published_date DATE DEFAULT NULL,
    isbn VARCHAR(13) DEFAULT NULL,
    publisher_name VARCHAR(50) DEFAULT NULL,
    genre_id INT NOT NUll, 
    book_language VARCHAR(10) DEFAULT NULL,
    num_of_pages INT DEFAULT NULL,
    book_rank INT NOT NULL,
    PRIMARY KEY (book_id),
    FOREIGN KEY (author_id) REFERENCES authors(author_id),
    FOREIGN KEY (genre_id) REFERENCES genres(genre_id));
