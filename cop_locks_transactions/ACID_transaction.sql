-- ACID Database
-- Atomicity, Consistency, Isolation, Durability
-- InnoDB is ACID compliant
-- MyISAM is NOT ACID compliant


create table books(id int primary key auto_increment, name varchar(50));

-- only applies to ACID compliant DB
-- when autocommit is set to '0', all the lines of queries that are executed won't be reflected to the real DB table 
-- until either 'commit' or 'rollback' is executed.
-- you can double check by executing all the queries (without executing 'commit' or 'rollback'). Then open another client
-- connection to SELECT the corresponded table. You can see that without 'commit', the changes is not reflected in the real DB table
set autocommit=0;

insert into books (name) values ('The Universe');

delete from books where id=3;

update books set name = "The Mountain Version 2" where id=4;


select * from books;

commit;
-- or --
rollback;




-- other alternative without using autocommit=0 (use 'start transaction'. it is similar to autocommit=0)
start transaction;

select * from books;
update books set name = 'The Valley' where id=4;

commit;
-- or --
rollback;



-- to show current transaction isolation level\
SELECT @@SESSION.transaction_isolation

-- set transaction isolation level to REPEATABLE READ (the default)
-- syntax: SET SESSION TRANSACTION ISOLATION LEVEL <TX_ISOLATION LEVEL>;
SET SESSION TRANSACTION ISOLATION LEVEL REPEATABLE READ;


/*
There are 4 ACID Isolation Level:
- SERIALIZABLE (lock to ROW level).....other wont be able to update if the row is on serializable transaction level lock
- REPEATABLE READ
- READ COMMITTED
- READ UNCOMMITTED
*/




