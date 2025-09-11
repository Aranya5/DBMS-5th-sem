--DAY 3

--1.a
create table department_163
(
    dept_id number(2),
    dept_name varchar(10),
    location_name varchar(10),
    constraint d3_1a_p primary key(dept_id),
    constraint d3_1a_u unique(dept_name));
    
desc department_163;

--1.b
create table employ_163
(
    empid number(4),
    ename varchar(10),
    salary number(7,2) not null,
    hire_date date,
    department_no number(3),
    constraint d3_1b_p primary key(empid),
    constraint d3_1b_f foreign key(department_no) references department_163(dept_id));
    
desc employ_163;

insert into department_163 values (&dept_id,'&dept_name','&location_name');

select * from department_163;


insert into employ_163 values (&empid, '&ename', &salary, '&date', &department_no);

select * from employ_163;


--2.a
create table person_163
(
    person_id number(3),
    first_name varchar(10),
    last_name varchar(10),
    phone_no number(10),
    constraint d3_2a_p primary key(person_id),
    constraint d3_2a_u unique(phone_no));
    
desc person_163;

--2.b
create table orders_163
(
    order_id number(4),
    order_date date,
    p_id number(3),
    constraint d3_2b_p primary key(order_id),
    constraint d3_2b_f foreign key(p_id) references person_163(person_id) on delete set null);
    
desc orders_163;

insert into person_163 values(&person_id, '&first_name', '&last_name', &phone_no);

select * from person_163;

insert into orders_163 values(&order_id,'&order_date',&p_id);

select *  from orders_163;

--3
create table emp_new 
(
    ename varchar(10),
    age number(3),
    dept_name varchar(10),
    loc varchar(10),
    constraint d3_3_check_name check(ename like 'S%'),
    constraint d3_3_upper check(dept_name = UPPER(dept_name)),
    constraint d3_3_lower check(loc = LOWER(loc)),
    constraint d3_3_age check(age > 18));
    
    
insert into emp_new values( '&ename', &age, '&dept_name', '&loc');

--Home Assignment
--1
create table employees_163
(
    empid number(3),
    ename varchar(10),
    salary number(10,2),
    address varchar(20),
    hire_date date,
    mgr_no number(3),
    dept_name varchar(15),
    constraint d3_hw_1_p primary key(empid),
    constraint d3_hw_1_f foreign key(mgr_no) references employees_163(empid) on delete set null);


insert into employees_163 values (&empid, '&ename', &salary, '&address', '&hire_date', &mgr_no, '&dept_name');

select * from employees_163;

--2
create table teacher_163
(
    eid number(3),
    ename varchar(10) not null,
    salary number(10,2),
    dept_name varchar(15),
    constraint d3_hw2_p primary key(eid),
    constraint d3_hw2_upp check(dept_name = UPPER(dept_name)),
    constraint d4_hw2_f foreign key(eid) references employees_163(mgr_no) on delete set null);


select * from teacher_163;


commit;

