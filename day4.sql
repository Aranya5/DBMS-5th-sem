--Day 4
--1.a
create table empp_163
(
    eid number(5),
    ename varchar(20),
    dept_id varchar(5));
    

--1.b
alter table empp_163 modify ename varchar(25);
desc empp_163;

--1.c
alter table empp_163 add comm number(7,2);

--1.d
rename empp_163 to emp_old_163;


--2.a
create table emp_day4(empid,ename,sal) 
    as select emp_id, emp_name, salary from emp_163;
    
select * from emp_day4;

--2.b
update emp_day4 set sal = (sal+5000) 
    where sal<40000;

--2.c
alter table emp_day4 add job_id number(3);

update emp_day4 set job_id = &job_id where empid = &empid;

--2.d
alter table emp_day4 modify ename varchar(25);
desc emp_day4;

--2.e
delete from emp_day4 where sal > 60000;

--2.f
rename emp_day4 to emp_d4;

commit;

