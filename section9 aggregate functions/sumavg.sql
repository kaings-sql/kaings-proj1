SELECT author_fname, author_lname, SUM(pages) FROM books GROUP BY author_lname, author_fname;

SELECT author_fname, author_lname, AVG(pages) FROM books GROUP BY author_lname, author_fname;