
use test;

select * from books;
select id, title into @theId, @theTitle from books where id=1;


select @theId, @theTitle;

drop procedure ShowBooks;

DELIMITER $$

CREATE PROCEDURE `ShowBooks`(in theId int, out outId int, out outTitle varchar(50)) -- 'in' for input parameter, 'out' for output parameter
begin
select id, title into outId, outTitle  from books where id = theId; -- outId, outTitle will be OUTput to whatever variables defined
end$$

DELIMITER ;

call ShowBooks(4, @id, @title);    -- in this case variables defined are '@id' & '@title'

select @id, @title;