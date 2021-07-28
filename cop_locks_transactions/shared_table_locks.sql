-- once client LOCK READ, it can only READ the table that it locks!
-- until the READ is unlocked, NOONE else can perform WRITE to it (others can only READ)!
-- multiple client can use LOCK READ
LOCK TABLES books READ;