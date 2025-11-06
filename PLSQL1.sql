
set serveroutput on;


--1
create table account_163
(
    account_id varchar(10) primary key,
    aname varchar(20),
    balance number(7,2));
    
insert into account_163 values('&account_id','&aname',&balance);

select * from account_163;

@/Users/aranyabasu/Coding/DBMS/p1.sql;


--2

create table areas_163
( 
    Radius number(3),
    area number(7,2));

select * from areas_163;

@/Users/aranyabasu/Coding/DBMS/p2.sql;


--3

create table fact_163
(   fnumber number(3),
    fact_number number(25));
    
select * from fact_163;

@/Users/aranyabasu/Coding/DBMS/p3.sql;


--4
create table emppp_163
(
    emp_no varchar(5) primary key,
    emp_name varchar(20),
    sal number(8,2));
    
insert into emppp_163 values('&emp_no','&emp_name', &sal);

select * from emppp_163;

@/Users/aranyabasu/Coding/DBMS/p4.sql;

commit;


    
    


