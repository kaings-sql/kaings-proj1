SELECT title, author_lname FROM books GROUP BY author_lname;

SELECT author_lname, COUNT(*) FROM books GROUP BY author_lname;

SELECT author_lname, COUNT(*) AS TOTAL FROM books GROUP BY author_lname ORDER BY TOTAL, author_lname;
SELECT author_lname, COUNT(*) AS TOTAL FROM books GROUP BY author_lname ORDER BY TOTAL DESC, author_lname;

SELECT author_fname, author_lname, COUNT(*) AS TOTAL FROM books GROUP BY author_lname;    # author_lname 'HARRIS' will have TOTAL 2 which is NOT CORRECT. Therefore.....
SELECT author_fname, author_lname, COUNT(*) AS TOTAL FROM books GROUP BY author_lname, author_fname;