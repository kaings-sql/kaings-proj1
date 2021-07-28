create table book (id int primary key auto_increment, name varchar(50) not null);

-- regular view
create view bookview as select id, name from book where id < 10;
insert into book (id, name) values (1, "The Thirty-Nine Steps");    -- this works!!!!!
insert into book (id, name) values (20, "War and Peace");            -- this also works!!!!! although won't show in the view

-- view with check option
create view bookview as select id, name from book where id < 10 with check option;
insert into book (id, name) values (1, "The Thirty-Nine Steps");    -- this works!!!!!
insert into book (id, name) values (20, "War and Peace");            -- this WILL NOT work!!!!! because it WON'T be shown in view (with check option)