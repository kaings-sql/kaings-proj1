# SELECT * FROM books LIMIT 5;

SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 5;      # limit result up to 5 rows

SELECT title, released_year FROM books ORDER BY released_year DESC;
SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 0,5;    # from 0th row up to 5 rows

SELECT title, released_year FROM books ORDER BY released_year DESC;
SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 1,5;    # from 1st row up to 5 rows

SELECT title, released_year FROM books ORDER BY released_year DESC;
SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 2,5;    # from 2nd row up to 5 rows

# order by author_lname then title
SELECT title, author_lname FROM books ORDER BY author_lname, title;
