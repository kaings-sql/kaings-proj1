-- show stored procedures
-- ref: https://tableplus.com/blog/2018/08/mysql-how-to-show-all-stored-procedures-functions.html
SHOW PROCEDURE STATUS;


delimiter ;;

create procedure HelloWorld()
    begin
        select "Hello World!!!";
    end;
;;

delimiter ;

call HelloWorld();