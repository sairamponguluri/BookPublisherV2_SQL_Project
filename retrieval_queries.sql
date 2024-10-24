use BookPublisherV2;


-- 1. Retrieve All Books
SELECT * 
FROM Books;

-- 2. Retrieve All Authors
SELECT * 
FROM Authors;

-- 3. Retrieve All Publishers
SELECT * 
FROM Publishers;

-- 4. Retrieve Books with Authors' Names
SELECT 
    Books.BookID,
    Books.Title,
    Authors.AuthorName,
    Books.PublicationYear,
    Books.ISBN
FROM 
    Books
INNER JOIN 
    Authors ON Books.Author = Authors.AuthorName;


-- 5. Retrieve Books Published by a Specific Publisher
SELECT 
    Books.Title,
    Publishers.PublisherName
FROM 
    Books
INNER JOIN 
    Publishers ON Publishers.PublisherID = Books.PublisherID
WHERE 
    Publishers.PublisherName = 'Penguin Random House';