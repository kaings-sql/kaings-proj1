USE book_shop;
SHOW TABLES;
SELECT user();    -- show current user

SELECT * FROM books;

CREATE USER `shopuser`@`localhost` IDENTIFIED BY 'pass123';
GRANT EXECUTE ON PROCEDURE book_shop.showBooks to shopuser@localhost;    -- ONLY user who is granted this privilege can execute the procedure
GRANT SELECT PRIVILEGES ON book_shop.* to shopuser@localhost;


DELIMITER $$
    CREATE DEFINER=`shopuser`@`localhost` PROCEDURE `showBooks`()
    SQL SECURITY DEFINER
    BEGIN
        SELECT title FROM books;
    END;
    $$
DELIMITER ;

CALL showBooks();

DROP PROCEDURE showBooks;