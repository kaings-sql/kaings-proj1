use test;
show tables;

select * from books;


-- passing single parameter
DELIMITER $$

    CREATE PROCEDURE `ShowBooks`(in maxId int)
    begin
    select * from books where id < maxId;
    end$$

DELIMITER ;


call ShowBooks(4);


-- passing multiple parameters
DELIMITER $$

    CREATE PROCEDURE `ShowBooks`(in maxId int, in _title varchar(100))
    begin
    select * from books where id < maxId and title = _title;
    end$$

DELIMITER ;


call ShowBooks(6, "some title..... ");


