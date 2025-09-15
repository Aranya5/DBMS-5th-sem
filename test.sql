create table pagols
(
    sname varchar(10),
    age number(3));
    
desc pagols;
    

insert into pagols values
(
    '&sname',&age
);

select * from pagols;

commit;