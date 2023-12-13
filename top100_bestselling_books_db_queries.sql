USE top100_bestselling_books;

-- ------------------------------------------ 
-- Which genres are the most popular among Barnes & Noble readers?
-- ------------------------------------------ 
SELECT 
    g.genre_name, COUNT(b.book_id) AS book_count
FROM
    genres g
        JOIN
    books b ON g.genre_id = b.genre_id
GROUP BY g.genre_name
ORDER BY book_count DESC;

-- ------------------------------------------ 
-- How does the popularity of a genre change over time?
-- ------------------------------------------ 
SELECT 
    g.genre_name,
    YEAR(b.published_date) AS publication_year,
    COUNT(b.book_id) AS book_count
FROM
    genres g
        JOIN
    books b ON g.genre_id = b.genre_id
GROUP BY g.genre_name , publication_year
ORDER BY publication_year , book_count DESC;

-- ------------------------------------------ 
-- Which authors consistently rank among the top 100 bestsellers?
-- ------------------------------------------ 
SELECT 
    a.first_name,
    a.last_name,
    COUNT(b.book_id) AS num_best_sellers
FROM
    authors a
        JOIN
    books b ON a.author_id = b.author_id
WHERE
    b.book_rank <= 100
GROUP BY a.author_id
ORDER BY num_best_sellers DESC;

-- ------------------------------------------ 
-- How does book length affect book rank?
-- ------------------------------------------ 
SELECT num_of_pages, AVG(book_rank) AS avg_rank
FROM books
GROUP BY num_of_pages
ORDER BY num_of_pages;

-- ------------------------------------------ 
-- Which genres have the highest average rating?
-- ------------------------------------------ 
SELECT g.genre_name, AVG(b.overall_rating) AS avg_rating
FROM genres g
JOIN books b ON g.genre_id = b.genre_id
GROUP BY g.genre_name
ORDER BY avg_rating DESC;


-- ------------------------------------------ 
-- Is there a relationship between publication date and book rank?
-- ------------------------------------------ 
SELECT YEAR(published_date) AS publication_year, AVG(book_rank) AS avg_rank
FROM books
WHERE published_date IS NOT NULL
GROUP BY publication_year
ORDER BY publication_year;
