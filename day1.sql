create table emp_163 (
   emp_id    number(5),
   emp_name  varchar2(20),
   hire_date date,
   dept_id   number(3),
   salary    number(8,2),
   comm      number(6,2)
);

select *
  from emp_163;

desc emp_163;

insert into emp_163 values ( &emp_id,
                             '&emp_name',
                             '&hire_date',
                             &dept_id,
                             &salary,
                             &comm );

select emp_id,
       emp_name,
       hire_date "STARTDATE"
  from emp_163;

select distinct dept_id
  from emp_163;

select emp_name
       || ', '
       || emp_id as employee_and_title
  from emp_163;

select emp_id,
       emp_name,
       salary * 12 as annuaal_salary
  from emp_163;

commit;