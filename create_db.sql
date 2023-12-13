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

-- -------------------------------------------------------------------------------------------
-- INSERT INTO: Inserting dataset for author into the authors table (2 different way)
-- -------------------------------------------------------------------------------------------
INSERT INTO authors (author_id, first_name, last_name) VALUES
(1, 'Alice', 'Oseman'), (2, 'Andrea', 'Waggener'), (3, 'Ann', 'Patchett'), (4, 'Bass', NULL), (5, 'Bill', 'O''Reilly'), (6, 'Ellen', 'Kalish'), (7, 'James', 'Dean'), (8, 'Julia', 'Child'),
(9, 'Martha', 'Stewart'), (10, 'Martin', 'Dugard'), (11, 'Mike', 'Boldt'), (12, 'Rachel', 'Gillig'), (13, 'Ramona', 'Kaulitzki'), (14, 'tai3_3', NULL), (15, 'Abraham', 'Verghese'), (16, 'Adam', 'Lazarus'),
(17, 'Amanda', 'Peters'), (18, 'Anthony', 'Doerr'), (19, 'Apryl', 'Stott'), (20, 'Ariel', 'Lawhon'), (21, 'Barbara', 'Kingsolver'), (22, 'Barbra', 'Streisand'), (23, 'Bobbie', 'Goods'), (24, 'Britney', 'Spears'),
(25, 'Bryan', 'O''Malley'), (26, 'David', 'Grann'), (27, 'C.S', 'Lewis'), (28, 'Carissa', 'Broadbent'), (29, 'Carly', 'West'), (30, 'Cassidy', 'Hutchinson'), (31, 'Charles', 'Munger'), (32, 'Christopher', 'Paolini'), 
(33, 'Cory', 'Walker'), (34, 'Daniel', 'Mason'), (35, 'Dav', 'Pilkey'), (36, 'David', 'Baldacci'), (37, 'David', 'Jeremiah'), (38, 'Dev', 'Petty'), (39, 'Dr.', 'Seuss'), (40, 'Eiichiro', 'Oda'), (41, 'Elisa', 'Chavarri'),
(42, 'Elley', 'Cooper'), (43, 'G. T.', 'Karber'), (44, 'Gege', 'Akutami'), (45, 'Gideon', 'Sterer'), (46, 'H. D.', 'Carlton'), (47, 'Hannah', 'Grace'), (48, 'Hannah', 'Maehrer'), (49, 'Hanya', 'Yanagihara'),
(50, 'Heather', 'Richardson'), (51, 'Heather', 'Fawcett'), (52, 'Holly', 'Black'), (53, 'Isabel', 'Ibañez'), (54, 'James', 'McBride'), (55, 'James', 'Patterson'), (56, 'Janet', 'Evanovich'), (57, 'Jeff', 'Kinney'), 
(58, 'Jennifer', 'Armentrout'), (59, 'John', 'Grisham'), (60, 'John', 'Vaillant'), (61, 'Kelly', 'Parra'), (62, 'Kimberly', 'Dean'), (63, 'Korie', 'Herold'), (64, 'Lauren', 'Roberts'), (65, 'Leon', 'Carroll'), (66, 'Liz', 'Cheney'), 
(67, 'LL', 'Cool J'), (68, 'Louisette', 'Bertholle'), (69, 'Mark', 'Harmon'), (70, 'Matthew', 'McConaughey'), (71, 'Matthew', 'Perry'), (72, 'Michael', 'Connelly'), (73, 'Mitch', 'Albom'), (74, 'Mo', 'Willems'), (75, 'Mo Xiang', 'Tong Xiu'), 
(76, 'Nate', 'Taylor'), (77, 'Ned', 'Blackhawk'), (78, 'Nora', 'Roberts'), (79, 'Patrick', 'Rothfuss'), (80, 'Paul', 'Lynch');

INSERT INTO authors (first_name, last_name) VALUES
('Pauline', 'Baynes'), ('Penguin', 'Readers'), ('Peter', 'Swanson'), ('Rachel', 'Maddow'), ('Rebecca', 'Ross'), ('Rebecca', 'Yarros'), ('Richard', 'Osman'), ('Rick', 'Riordan'), ('Rick', 'Rubin'), ('Robert', 'Kirkman'), ('Ryan', 'Ford'), 
('Ryan', 'Ottley'), ('Sarah', 'Maas'), ('Scott', 'Cawthon'), ('Simone', 'Beck'), ('Snoop', 'Dogg'), ('Stephen', 'King'), ('Stuart', 'Gibbs'), ('Suzanne', 'Collins'), ('Terry', 'Newman'), ('Tim', 'Alberta'), ('Tish', 'Rabe'), ('Tom', 'Brannon'), 
('Travis', 'Baldree'), ('Victo', 'Ngai'), ('Wendy', 'Loggia'), ('Zadie', 'Smith'), ('ZeldaCW', NULL);


-- -------------------------------------------------------------------------------------------
-- INSERT INTO: Inserting dataset for genres into the genres table
-- -------------------------------------------------------------------------------------------
INSERT INTO genres (genre_name) VALUES
('Action'), ('Art'), ('Biography'), ('Business'), ('Children'), ('Comic'), ('Cooking'), ('Fantasy'), ('Fiction'),
('Historical'), ('Horror'), ('Manga'), ('Music'), ('Mystery'), ('Mystery Thriller'), ('Mythology'), ('Non-fiction'),
('Politic'), ('Religion'), ('Romance'), ('Science Fiction'), ('Thriller'), ('Young Adult'), ('journal');



-- -------------------------------------------------------------------------------------------
-- INSERT INTO: Inserting dataset for books into the books table
-- -------------------------------------------------------------------------------------------
INSERT INTO books (title, author_id, hard_copy, paper_copy, eBook, audioCD, overall_rating, num_of_reviews, published_date, isbn, publisher_name, genre_id, book_language, num_of_pages, book_rank ) 
VALUES ('Oath and Honor: A Memoir and a Warning', 66, '$29.25', '$16.99', NULL, '$45.00', 3.9, 11, '2023-12-05', '9781668640449','Little, Brown and Company', 17, 'English', 384, 1),
('The Heaven & Earth Grocery Store', 54, '$25.20', NULL, '$14.99', '$45.00', 5, 16, '2023-08-08', '9780593422946', 'Penguin Publishing Group', 9, 'English', 400, 2),
('The Wager: A Tale of Shipwreck, Mutiny and Murder', 26, '$27.00', NULL, '$14.99', '$40.00', 4.5, 20, '2023-04-18', '9780385534260', 'Knopf Doubleday Publishing Group', 10, 'English', 352, 3),
('Friends, Lovers, and the Big Terrible Thing: A Memoir', 71, '$23.99', '$18.99', '$14.00', '$39.99', 4.5, 24, '2022-11-01', '9781250866448', 'Flatiron Books', 3, 'English', 250, 4),
('From Crook to Cook: Platinum Recipes from Tha Boss Dogg''s Kitchen', 96, '$24.95', NULL, '$15.99', NULL, 5, 3, '2018-10-23', '9781452179612', 'Chronicle Books', 7, 'English', 192, 5),
('Don''t Let the Pigeon Drive the Sleigh!', 74, '$18.99', NULL, NULL, NULL, 4.7, 3, '2023-09-05', '9781454952770', 'Union Square Kids', 9, 'English', 40, 6),
('The Hunger Games 4-Book Paperback Box Set', 99, '$61.96', NULL, NULL, NULL, 0, 0, '2023-10-03', '9781339042657', 'Scholastic, Inc.', 21, 'English', 1712, 7),
('House of Earth and Blood (Crescent City Series #1)', 93, '$32.00', '$19.00', '$15.20', '$34.99', 4.7, 156, '2023-09-26', '9781639733286', 'Bloomsbury USA', 20, 'English', 832, 8),
('The Ballad of Songbirds and Snakes', 99, '$27.99', '$16.99', '$10.99', '$49.99', 4.2, 81, '2020-05-19', '9781338635171', 'Scholastic, Inc.', 21, 'English', 528, 9),
('Fourth Wing', 86, '$29.99', NULL, '$14.99', NULL, 4.7, 245, '2023-05-02', '9781649374042', 'Entangled Publishing, LLC', 8, 'English', 500, 10),
('Killers of the Flower Moon: The Osage Murders and the Birth of the FBI', 26, '$35.00', '$14.99', '$13.99', '$19.99', 4.3, 126, '2018-04-03', '9780307742483', 'Knopf Doubleday Publishing Group', 10, 'English', 416, 11),
('House of Flame and Shadow (Crescent City Series #3)', 93, '$32.00', NULL, '$22.40', NULL, 5, 1, '2024-01-30', '9781681193090', 'Bloomsbury Publishing', 8, 'English', 171, 12),
('The Berry Pickers', 17, '$27.00', NULL, '$14.99', NULL, 4.8, 8, '2023-10-31', '9781646221950', 'Catapult', 15, 'English', 320, 13),
('Powerless', 64, '$19.99', NULL, '$10.99', NULL, 4.5, 30, '2023-11-07', '9781665954907', 'Simon & Schuster Books For Young Readers', 23, 'English', 528, 14),
('North Woods', 34, '$28.00', NULL, '$13.99', NULL, 4.4, 16, '2023-09-19', '9780593597033', 'Random House Publishing Group', 9, 'English', 384, 15),
('Iron Flame', 86, '$29.99', NULL, '$14.99', NULL, 4.3, 82, '2023-11-07', '9781649374172', 'Entangled Publishing, LLC', 8, 'English', 640, 16),
('All the Light We Cannot See', 18, '$32.50', '$18.99', '$14.99', '$19.99', 4.4, 816, '2017-04-04', '9781508239789', 'Simon & Schuster Audio', 10, 'English', NULL, 17),
('Apprentice to the Villain', 48, NULL, '$19.99', '$12.99', NULL, 4.7, 51, '2024-08-06', '9781649377173', 'Entangled Publishing, LLC', 11, 'English', '352', 18),
('Taylor Swift: A Little Golden Book Biography', 106, '$5.99', '$5.99', NULL, NULL, 5, 2, '2023-05-02', '9780593566725', 'Random House Children''s Books', 17, 'English', 24, 19),
('House of Sky and Breath (Crescent City Series #2)', 93, '$21.99', '$19.00', NULL, NULL, 4.5, 41, '2023-09-26', '9781639732876', 'Bloomsbury USA', 8, 'English', 801, 20),
('Jujutsu Kaisen Box Set Vols. 1-4', 44, '$39.96', NULL, NULL, NULL, 5, 3, '2022-11-29', '9781974737109', 'VIZ Media LLC', 1, 'English', NULL, 21),
('100 Elementary to Impossible Mysteries to Solve Using Logic, Skill, and the Power of Deduction', 43, NULL, '$16.00', NULL, NULL, 4.9, 8, '2023-06-13', '9781250892317', 'St. Martin''s Publishing Group', 15, 'English', 384, 22),
('One Dark Window', 12, NULL, '$18.99', '$6.99', NULL, 4.9, 45, '2022-09-27', '9780316312486', 'Orbit', 20, 'English', 432, 23),
('My Name Is Barbra', 22, '$47.00', NULL, '$18.99', NULL, 5, 9, '2023-11-07', '9780525429524', 'Penguin Publishing Group', 3, 'English', 992, 24),
('The Exchange: After The Firm', 59, '$29.95', '$19.99', '$14.99', '$45.00', 3.4, 50, '2023-10-17', '9798855677119', 'Barnes & Noble Press', 22, 'English', 154, 25),
('The Fraud: A Novel', 107, '$29.00', NULL, '$14.99', NULL, 3, 1, '2023-09-05', '9780525558965', 'Penguin Publishing Group', 10, 'English', 464, 26),
('Murtagh: The World of Eragon', 31, '$29.99', NULL, '$14.99', '$50.00', 4.3, 12, '2023-11-07', '9780593650882', 'Random House Children''s Books', 23, 'English', 704, 27),
('The Chalice of the Gods', 88, '$19.99', NULL, '$10.99', NULL, 4.6, 10, '2023-09-26', '9781368098175', 'Disney Publishing Group', 16, 'English', 288, 28),
('Taylor Swift: A Little Golden Book Biography', 106, '$5.99', '$5.99', NULL, NULL, 5, 2, '2023-05-02', '9780593566725', 'Random House Children''s Books', 17, 'English', 24, 19),
('The Covenant of Water', 15, '$32.00', NULL, '$28.00', NULL, 4.3, 26, '2023-05-02', '9780802162182', 'Grove/Atlantic, Inc.', 9, 'English', 736, 30),
('The Christmas Owl: Based on the True Story of a Little Owl Named Rockefeller', 45, '$19.99', NULL, NULL, NULL, 5, 3, '2023-10-17', '9780316571548', 'Little, Brown Books for Young Readers', 5, 'English', 40, 31),
('Ghosts of Honolulu', (69), '$29.99', NULL, '$14.99', NULL, 5, 1, '2023-11-14', '9781400337026', 'Harper Select', (17), 'English', 272, 32),
('Scott Pilgrim Vol. 1: Scott Pilgrim''s Precious Little Life', (25), '$24.99', '$14.99', '$11.49', NULL, 4.8, 50, '2004-08-14', '9781932664089', 'Oni Press', (6), 'English', 168, 33),
('The Woman in Me', (24), '$32.99', NULL, '$16.99', '$32.99', 4.7, 62, '2023-10-24', '9781668009062', 'Gallery Books', (3), 'English', 288, 34),
('Prophet Song', (80),'$26.00', '$26.00', NULL, '$39.99', 5, 4, '2023-12-05', '9780802163011', 'Grove/Atlantic, Inc.', (21), 'English', 320, 35),
('Holly', (97), '$30.00', NULL, '$14.99', '$44.99', 3.6, 43, '2023-09-05', '9781668014950', 'Scribner', (11), 'English', 464, 36),
('Heartstopper, Volume 5',(1),'$25.99', '$15.99', '$9.99', NULL, 5, 2, '2023-12-19', '9781338807509', 'Scholastic, Inc.', (6), 'English', 336, 37),
('Icebreaker (Maple Hills Series #1)',(47), NULL, '$17.99', '$10.99', NULL, 4.5, 66, '2023-02-07', '9781668026045', 'Atria Books', (20), 'English', 448, 38),
('Prequel: An American Fight Against Fascism', (84), '$32.00', '$14.99', NULL, '$45.00', 5, 3, '2023-10-17', '9780593444528', 'Crown Publishing Group', (10), 'English', 416, 39),
('Alex Cross Must Die: A Thriller', (55),'$30.00', '$14.99', NULL, '$45.00', 4.7, 3, '2023-11-20', '9780316402484', 'Little, Brown and Company', (22), 'English', 416, 40),
('The Edge', (36), '$30.00', NULL, '$14.99', '$50.00', 4.7, 7, '2023-11-14', '9781538719916', 'Grand Central Publishing', (22), 'English', 416, 41),
('The Kingdom, the Power, and the Glory: American Evangelicals in an Age of Extremism', (101), '$35.00', NULL, '$17.99', '$51.90', 0, 0, '2023-12-05', '9780063226883', 'HarperCollins Publishers', (18), 'English', 512, 42),
('The Wingmen: The Unlikely, Unusual, Unbreakable Friendship between John Glenn and Ted Williams', (16), '$29.00', NULL, '$14.99', NULL, 5, 32, '2023-08-22', '9780806542508', 'Kensington', (10), 'English', 304, 43),
('No Brainer (Diary of a Wimpy Kid Series #18)', (57), '$14.99', NULL, '$13.49', '$31.95', 5, 3, '2023-10-24', '9781419766947', 'Amulet Books', (5), 'English', 224, 44),
('Apprentice to the Villain', (48), NULL, '$19.99', '$12.99', NULL, 4.7, 51, '2024-08-06', '9781649377173', 'Entangled Publishing, LLC', (11), 'English', 352, 18),
('The Thursday Murder Club (Series #1)', (87), NULL, '$18.99', '$12.99', NULL, 4.3, 73, '2021-08-03', '9781984880987', 'Penguin Publishing Group', (14), 'English', 384, 46),
('The Creative Act: A Way of Being', (89), '$32.00', NULL, '$16.99', NULL, 5, 7, '2023-11-24', '9780593657621', 'Penguin Publishing Group', (17), 'English', 432, 47),
('A Little Life', (49), '$18.00', NULL, '$13.99', NULL, 4.5, 96, '2016-01-06', '9780804172707', 'Knopf Doubleday Publishing Group', (9), 'English', 832, 48),
('Cooking with the Grinch (Dr. Seuss)', (102), NULL, '$5.99', NULL, NULL, 5, 1, '2017-09-05', '9781524714628', 'Random House Children''s Books', (5), 'English', 32, 49),
('Invincible Compendium, Volume 1', (90), NULL, '$64.99', '$39.99', NULL, 5, 2, '2011-08-30', '9781632151537', 'Image Comics', (6), 'English', 1042, 50),
('Spy School (Series #1)', (98), '$18.99', '$8.99', '$8.99', '$29.99', 4.5, 118, '2013-04-02', '9781442421837', 'Simon & Schuster Books For Young Readers', (5), 'English', 290, 51),
('The Rediscovery of America: Native Peoples and the Unmaking of U.S. History', (77), '$35.00', NULL, '$35.00', NULL, 0, 0, '2023-04-25', '9780300271249', 'Yale University Press', (10), 'English', 576, 52),
('Fazbear Frights Four Book Box Set (Five Nights at Freddy''s)', (94), NULL, '$39.96', NULL, NULL, 0, 0, '2020-09-01', '9781338715804', 'Scholastic, Inc.', (11), 'English', 1984, 53),
('Elmore the Christmas Moose', (38), '$18.99', NULL, NULL, NULL, 5, 8, '2023-10-24', '9780593707456', 'Random House', (5), 'English', NULL, 54),
('The Great Disappearance: 31 Ways to be Rapture Ready', (37), '$29.99', NULL, '$14.99', NULL, 5, 3, '2023-10-03', '9780785252245', 'Nelson, Thomas, Inc.', (19), 'English', 320, 55),
('How the Grinch Stole Christmas!', (39), '$16.99', NULL, '$10.99', NULL, 4.5, 54, '1957-10-12', '9780394800790', 'Random House Children''s Books', (5), 'English', 64, 56),
('Poor Charlie''s Almanack: The Essential Wit and Wisdom of Charles T. Munger', (31), '$30.00', NULL, NULL, NULL, 0, 0, '2023-12-05', '9781953953230', 'Stripe Matter, Inc.', (4), 'English', 384, 57),
('The Ashes and the Star-Cursed King', (28), '$29.99', NULL, NULL, NULL, 4.8, 11, '2024-06-04', '9781250354907', 'Tor Publishing Group', (20), 'English', 608, 58),
('Mom''s Story: A Memory and Keepsake Journal for My Family', (63), '$24.95', NULL, NULL, NULL, 0, 0, '2022-09-13', '9781950968879', 'Blue Star Press', (24), 'English', 112, 59),
('Just Because', (70), '$19.99', NULL, '$10.99', NULL, 4.5, 2, '2023-11-24', '9780593622049', 'Penguin Young Readers Group', (5), 'English', 32, 60),
('Hunting Adeline', (46), '$25.38', '$19.86', NULL, NULL, 4.5, 24, '2022-01-26', '9798765521021', 'Barnes & Noble Press', (20), 'English', 530, 61),
('Resurrection Walk (Lincoln Lawyer Series #7)', (72), '$30.00', '$19.99', '$14.99', NULL, 5, 3, '2023-11-07', '9781538767153', 'Grand Central Publishing', (22), 'English', 400, 62),
('A Court of Thorns and Roses Paperback Box Set (5 books)', (93), '$93.00', NULL, NULL, NULL, 4.6, 5, '2022-11-01', '9781639730193', 'Bloomsbury USA', (8), 'English', NULL, 63), ('How to Draw Super Cute Things with Bobbie Goods: Learn to draw & color absolutely adorable art!', (23), '$19.99', '$19.99', NULL, NULL, 0, 0, '2023-11-21', '9780760385036', 'Walter Foster Publishing', (2), 'English', 112, 64),
('Snow Daze (B&N Exclusive Edition) (Pete the Cat)', (7), '$17.99', '$8.99', '$4.99', NULL, 4.5, 2, '2022-11-01', '9780062404268', 'HarperCollins Publishers', (5), 'English', 113, 65),
('The Cruel Prince: Collector''s Edition', (52), '$35.00', NULL, NULL, NULL, 5, 10, '2023-10-24', '9780316461252', 'Little, Brown Books for Young Readers', (8), 'English', 400, 66),
('The Frozen River: A Novel', (20), '$28.00', '$13.99', NULL, NULL, 4, 10, '2023-12-05', '9780385546881', 'Knopf Doubleday Publishing Group', (9), 'English', 448, 67),
('Percy Jackson and the Olympians 5 Book Paperback Boxed Set', (88), NULL, '$44.95', NULL, NULL, 4.7, 25, '2023-09-05', '9781368098045', 'Disney Publishing Group', (9), 'English', 1920, 68),
('LL COOL J Presents The Streets Win: 50 Years of Hip-Hop Greatness', (67), '$55.00', NULL, NULL, NULL, 0, 0, '2023-11-24', '9780847874057', 'Rizzoli', (13), 'English', 336, 69),
('Inheritance: The Lost Bride Trilogy, Book 1', (78), '$30.00', '$19.99', '$14.99', '$39.99', 4.6, 82, '2023-11-21', '9781250902450', 'Macmillan Audio', (20), 'English', 432, 70),
('Taylor Swift: And the Clothes She Wears', (100), '$30.00', NULL, NULL, NULL, 5, 1, '2023-10-19', '9781788842280', 'Acc Publishing Group Ltd', (13), 'English', 160, 71),
('The Little Liar', (73), '$26.99', NULL, '$14.99', '$36.99', 5, 1, '2023-11-14', '9798212700139', 'HarperCollins Publishers', (9), 'English', 352, 72),
('One Piece (Omnibus Edition), Vol. 2: East Blue Vols. 4-5-6', (40), NULL, '$16.99', NULL, NULL, 5, 3, '2010-01-05', '9781421536262', 'VIZ Media LLC', (12), 'English', 576, 73),
('Emily Wilde''s Encyclopaedia of Faeries (Series #1)', (51), '$22.99', '$18.00', '$12.99', NULL, 4.5, 62, '2023-10-24', '9780593724729', 'Random House Worlds', (8), 'English', 352, 74),
('Demon Copperhead', (21), '$32.50', '$21.99', '$16.99', '$67.99', 4, 37, '2022-10-18', '9780063251984', 'HarperCollins Publishers', (9), 'English', 560, 75),
('A Court of Thorns and Roses (Series #1)', (93), '$30.00', '$19.99', '$15.20', '$0.00', 4.7, 417, '2020-06-02', '9781619634459', 'Bloomsbury Publishing', (20), 'English', 432, 76),
('Fire Weather: A True Story from a Hotter World', (60), '$32.50', NULL, '$14.99', NULL, 0, 0, '2023-06-06', '9781524732851', 'Knopf Doubleday Publishing Group', (17), 'English', 432, 77),
('The Hunger Games (Hunger Games Series #1)', (99), '$20.99', '$14.99', '$9.99', '$44.99', 4.7, 47824, '2010-07-01', '9780439023528', 'Scholastic, Inc.', (9), 'English', 384, 78),
('Mockingjay (Hunger Games Series #3)', (99), '$17.99', '$14.99', '$9.99', NULL, 4.4, 27271, '2014-02-25', '9780545663267', 'Scholastic, Inc.', (9), 'English', 400, 79),
('Catching Fire (Hunger Games Series #2)', (99), '$22.99', '$14.99', '$14.99', '$44.99', 4.6, 29123, '2013-06-04', '9780545586177', 'Scholastic, Inc.', (9), 'English', 400, 80),
('Share Some Kindness, Bring Some Light', (19), '$17.99', NULL, '$10.99', NULL, 5, 3, '2020-10-27', '9781534462380', 'Simon & Schuster/Paula Wiseman Books', (5), 'English', 40, 81),
('Tom Lake (Signed Book)', (3),'$30.00', '$30.00', '$15.99', '$46.99', 4.3, 24, '2023-08-02', '9780063336117', 'HarperCollins Publishers', (9), 'English', 320, 82),
('Dirty Thirty (Stephanie Plum Series #30)', (56), '$29.99', '$18.99', '$14.99', '$34.99', 4.2, 21, '2023-10-31', '9781668003114', 'Atria Books', (14), 'English', 336, 83),
('Mastering the Art of French Cooking, Volume 1', (8), '$40.99', '$35.00', '$22.99', NULL, 3.9, 219, '1983-09-12', '9780394721781', 'Knopf Doubleday Publishing Group', (7), 'English', 752, 84),
('Lex''s Halloween', (4),'$14.48', NULL, NULL, NULL, 5, 7, '2022-12-07', '9798823159265', 'Barnes & Noble Press', (5), 'English', 26, 85),
('Two Twisted Crowns', (12),  NULL, '$18.99', '$9.99', NULL, 4.8, 34, '2023-10-17', '9780316312714', 'Orbit', (8), 'English', 480, 86),
('Throne of Glass (Series #1)', (93), '$24.99', '$19.00', '$9.99', NULL, 4.6, 465, '2023-02-14', '9781639730957', 'Bloomsbury USA', (8), 'English', 432, 87),
('The Chronicles of Narnia Box Set', (27), '$139.63', '$62.93', NULL, NULL, 4.3, 74, '1994-07-01', '9780060244880', 'HarperCollins Publishers', (9), 'English', 1632, 88),
('The Narrow Road Between Desires', (79), '$26.00', '$26.00', '$15.99', NULL, 3.5, 12, '2023-11-14', '9780756419240', 'Astra Publishing House', (9), 'English', 240, 89),
('Bookshops & Bonedust', (104), NULL, '$17.99', '$12.99', NULL, 4.3, 17, '2023-11-07', '9781250886101', 'Tor Publishing Group', (21), 'English', 352, 90),
('Democracy Awakening: Notes on the State of America', (50), '$30.00', NULL, '$14.99', NULL, 5.9, 3, '2023-09-26', '9780593652961', 'Penguin Publishing Group', (10), 'English', 304, 91),
('What the River Knows', (53), '$20.00', NULL, '$20.00', NULL, 4.4, 31, '2023-10-31', '9781250345394', 'St. Martin''s Publishing Group', (8), 'English', 416, 92),
('The Christmas Guest: A Novella', (83), '$19.99', NULL, '$11.99', '$27.99', 4.2, 18, '2023-10-17', '9780063297456', 'HarperCollins Publishers', (9), 'English', 112, 93),
('Influencers (Cat Kid Comic Club #5)', (35), '$12.99', '$12.99', '$7.99', NULL, 5, 1, '2023-11-28', '9781339034768', 'Scholastic, Inc.', (5), 'English', 224, 94),
('Killing the Witches: The Horror of Salem, Massachusetts', (5), '$32.00', NULL, '$15.99', '$39.99', 4.2, 6, '2023-09-26', '9781250283320', 'St. Martin''s Publishing Group', (10), 'English', 304, 95),
('From Blood and Ash (Series #1)', (58), '$31.99', '$19.99', '$7.99', '$27.99', 4.8, 105, '2022-01-13', '9781952457760', 'Evil Eye Concepts, Inc', (20), 'English', 494, 96),
('Enough', (30), '$30.00', NULL, '$14.99', '$44.99', 4, 17, '2023-09-26', '9781668028285', 'Simon & Schuster', (3), 'English', 384, 97),
('Bluey 5-Minute Stories: 6 Stories in 1 Book? Hooray!', (82), '$14.99', NULL, '$8.99', NULL, 0, 0, '2022-10-22', '9780593521908', 'Penguin Young Readers Group', (5), 'English', 160, 98),
('Heaven Official''s Blessing: Tian Guan Ci Fu (Novel) Vol. 8', (75), NULL, '$29.99', NULL, NULL, 5, 14, '2023-11-28', '9781685798468', 'Seven Seas Entertainment', (12), 'English', 384, 99),
('Divine Rivals: A Novel', (85), '$18.99', '$12.00', '$11.99', NULL, 4.9, 61, '2023-04-04', '9781250857439', 'St. Martin''s Publishing Group', (8), 'English', 368, 100);
