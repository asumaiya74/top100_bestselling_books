# **Barnes & Noble Top 100 Bestselling Books**
## Introduction: 
The world of literature is extensive and ever-evolving, but understanding what readers find captivating can be important for publishers, booksellers, and even authors. This case study presents the creation of a SQL database concentrating on the top 100 bestselling books at Barnes & Noble, delivering valuable insights into popular genres, author trends, and reader choices.
## Target audience: 
This database is created for various users, including booksellers, publishers, authors, and readers. 
- Booksellers can utilize this database to maximize their stock selection and marketing campaigns by tracking genre popularity and author trends.
- Publishers can identify promising genres and book formats for their future purchases. Authors can gain insights into reader preferences and adapt their writing styles accordingly.
- Readers can discover new books based on their preferred genres, authors, and formats.
## Sample data: 
For the project, the primary data source will be Barnes & Noble's website, specifically their "[B&N Top 100: Bestselling Books](https://www.barnesandnoble.com/b/books/_/N-1fZ29Z8q8)" section. This section contains information on the top 100 books, including the title, author, genre, format (hardcopy, paperback, ebook, audiobook), publication date, ISBN, Number of pages, and overall rating. Additionally, scraping tools can extract further data, such as the publisher and book language.
## Entities/Tables - Attributes & Columns
| Entity/Table | Potential Attributes |
|----------|----------|
| Authors | First name, Last name | 
| Genres | Types of Genres (Genre Name) | 
| Books | Title, Publication Date, ISBN, Publisher Name, Book Language, Number of pages, format (hardcopy, paperback, ebook, audiobook), Overall rating, Number of reviews, and the rank. | 
## Questions the Database will Answer:
1. Which genres are the most popular among Barnes & Noble readers?
2. How does the popularity of a genre change over time?
3. Which authors consistently rank among the top 100 bestsellers?
4. Is there a correlation between book format and book rank?
5. How does book length affect book rank?
6. Is there a relationship between publication date and book rank?
7. Which genres have the highest average rating?
## Conclusion:
By analyzing the top 100 bestselling books at Barnes & Noble, this SQL database objective is based on reader preferences and market trends. This information can be valuable for various stakeholders in the literary world, helping them make informed decisions and cater to the evolving needs of readers. 
