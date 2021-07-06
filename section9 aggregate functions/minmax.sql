SELECT MIN(released_year) FROM books;
SELECT MIN(released_year) FROM books;
SELECT MIN(pages) FROM books;
 
SELECT MAX(pages) FROM books;
SELECT MAX(released_year) FROM books;
SELECT MAX(pages), title FROM books;    # INCORRECT title. result 'pages' is not the related to result 'title'


SELECT * FROM books WHERE pages=(SELECT MAX(pages) FROM books);    # SLOW! because running 2 queries basically
SELECT * FROM books ORDER BY pages DESC LIMIT 1;                   # same as above result, but FASTER! (only 1 query)


# MIN/MAX also work the same way as COUNT. It creates 'super rows' and treats them as 1 row
SELECT author_lname, MIN(released_year) FROM books GROUP BY author_fname,author_lname;    
SELECT author_fname, author_lname, MIN(released_year) FROM books GROUP BY author_fname,author_lname;
SELECT author_fname, author_lname, MAX(pages) FROM books GROUP BY author_lname,author_fname;











