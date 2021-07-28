USE book_shop;
SHOW TABLES;
SHOW FULL TABLES;


SELECT * FROM books;
SELECT title, released_year FROM books;

-- You can still perform insert into the following view (although not it is use-case. not recommended)
CREATE VIEW books_view AS SELECT title, released_year FROM books;    -- create view
SHOW FULL TABLES;
SELECT * FROM books_view;    -- show the content of books_view view

DROP VIEW books_view;    -- drop view