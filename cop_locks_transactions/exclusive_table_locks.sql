USE book_shop;
SHOW TABLES;

-- open 2 client to run query
-- once client LOCK WRITE, it can only READ and WRITE the table that it locks!
-- until it is unlocked, NOONE else can perform READ or WRITE!
-- ONLY single client can use LOCK WRITE
LOCK TABLES books WRITE;    -- lock table 'books' from other client to access (other client wont be able to access until unlock)
LOCK TABLES books WRITE, orders WRITE;

UNLOCK TABLES;    -- unlock all tables