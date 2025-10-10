select * from employees_163;
--4
select ename, salary from employees_163
 where mgr_no in ( select empid from employees_163 where ename = 'Atif');
 
select dept_id, dept_name, dept_location from depart_163
    where dept_id = (