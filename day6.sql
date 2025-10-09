select * from emp_163;

create table depart_163
(
    dept_id number(3),
    dept_name varchar(10),
    location_name varchar(10),
    constraint p123 primary key(dept_id) );
    
insert into depart_163 values (&dept_id, '&dept_name', '&location_name');

select * from depart_163;

--1.a
select e.emp_name, d.dept_name
    from emp_163 e, depart_163 d
    where e.dept_id = d.dept_id
    and e.emp_name like '%a%';
    
--1.b
select e.emp_name, d.dept_name, d.location_name
    from emp_163 e, depart_163 d
    where e.dept_id = d.dept_id
    and e.comm is not null;

--2.a
select * from employees_163;

select e1.empid as employee, e1.ename as emp#, e1.mgr_no as managerr, e2.ename as mgr#
    from employees_163 e1, employees_163 e2
    where e1.mgr_no = e2.empid;
    
--2.b
select e1.empid as employee, e1.ename as emp#, e1.mgr_no as managerr, e2.ename as mgr#
    from employees_163 e1 left outer join employees_163 e2
    on(e1.mgr_no = e2.empid)
    order by e1.empid;
    
--3.a
select e1.emp_name, e1.dept_id, e2.emp_name as same_dept
    from emp_163 e1, emp_163 e2
    where e1.dept_id = e2.dept_id
    and e1.emp_name != e2.emp_name;
    
--3.b
select emp_name, hire_date from emp_163
    where hire_date > (select hire_date from emp_163
                        where emp_name = 'Tamojit');

--4
select e1.ename as emp_name, e1.hire_date as emp_hire_date, e2.ename as mgr_name, e2.hire_date as mgr_hire_date
    from employees_163 e1, employees_163 e2
    where e1.mgr_no = e2.empid
    and e1.hire_date < e2.hire_date;
    
    
--Home Assignment
--1
select e.emp_name, e.dept_id, d.dept_name
    from emp_163 e, depart_163 d
    where e.dept_id = d.dept_id;
    
    
--2.a
alter table emp_163 add job_name varchar(10);
update emp_163 set job_name = '&job_name'
    where emp_id = &emp_id;
    
select distinct job_name from emp_163
    where dept_id = 101;
    

--2.b
select e.emp_name, e.job_name, e.dept_id, d.dept_name
    from emp_163 e, depart_163 d
    where e.dept_id = d.dept_id
    and d.location_name = 'ablock';


commit;











