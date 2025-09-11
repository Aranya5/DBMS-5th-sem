select * from emp_163;

--1 a

select emp_name from emp_163
    where emp_name like '%a%' and emp_name like '%n%';
    
select emp_name, dept_id from emp_163
    where comm is null;
    
    
select emp_name as Employee, salary as Monthly_salary from emp_163
    where (salary between '45000' and '50000') and (dept_id = '101' or dept_id = '105');
    
    
--1 b

select emp_name from emp_163
    where emp_name like 'A%' or emp_name like 'T%'
        order by emp_name;

--2
select emp_name, salary+nvl(comm,0) as total_salary from emp_163;

--3
select distinct dept_id from emp_163;

--4
select emp_name from emp_163 
    where to_char(hire_date,'YYYY') = '2018';

--5
select emp_id,emp_name, round(months_between(sysdate,hire_date)) as exp_in_months from emp_163;

--6
select * from emp_163 order by salary desc;

--7
select emp_name from emp_163
    where hire_date < '23-may-2018';
    
--8
select emp_name from emp_163 
    where hire_date between '28-sep-20' and '03-dec-22';
    
--Home Assignment
--1a
select emp_id, emp_name, salary, (1.15*salary) as New_salary from emp_163;

--1b
select emp_id, emp_name, salary, (1.15*salary) as New_salary, (1.15*salary - salary) as Increm from emp_163;

--2
select emp_name ||' earns '||salary||' monthly but wants '||3*salary as dream_salaries from emp_163;

--4
select emp_name, salary + nvl(comm,0) as total_salary from emp_163
    where emp_name like 'A%';



commit;