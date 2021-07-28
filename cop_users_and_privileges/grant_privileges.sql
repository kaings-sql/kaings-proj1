-- syntax
/* 
GRANT <privilege-name>, <privilege-name>, ... PRIVILEGES ON <DB-name>.<table-name> TO <username>@<domain>;

reference of the available privileges:
https://dev.mysql.com/doc/refman/5.7/en/privileges-provided.html
*/

-- grant 'select' privilege to 'will@localhost' for ALL tables ('*') on DB 'book_shop'
GRANT SELECT PRIVILEGES ON book_shop.* TO will@localhost;
-- grant 'select', 'update' privilege to 'will@localhost' for 'books', 'orders' tables on DB 'book_shop'
GRANT SELECT, UPDATE PRIVILEGES ON book_shop.books, book_shop.orders TO will@localhost;