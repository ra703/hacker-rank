CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10,2)
);



INSERT INTO customers (customer_id, customer_name, city) VALUES
(1, 'Alice', 'New York'),
(2, 'Bob', 'Los Angeles'),
(3, 'Charlie', 'Chicago'),
(4, 'David', 'Houston'),
(5, 'Eva', 'Phoenix'),
(6, 'Frank', 'Philadelphia'),
(7, 'Grace', 'San Antonio'),
(8, 'Henry', 'San Diego'),
(9, 'Ivy', 'Dallas'),
(10, 'Jack', 'San Jose');


INSERT INTO orders (order_id, customer_id, order_date, amount) VALUES
(101, 1, '2024-01-05', 250.00),
(102, 2, '2024-01-06', 150.00),
(103, 3, '2024-01-07', 300.00),
(104, 1, '2024-01-10', 120.00),
(105, 5, '2024-01-12', 450.00),
(106, 6, '2024-01-15', 200.00),
(107, 2, '2024-01-18', 175.00),
(108, 8, '2024-01-20', 500.00),
(109, 11, '2024-01-22', 90.00),
(110, 12, '2024-01-25', 60.00);

select * from customer;
select * from orders;
select c.cid,c.customer,o.order_id,o.customer;
select * from city;
select a.customer_id,a.first_name,a.last_name,o.order_id,o.customer from customer as a
join orders as o
where c.customer_id = o.customer_id; 
select a.customer_id,a.first_name,a.last_name,o.order_id,o.customer from customer as a
join orders as o
on c.customer_id = o.customer_id; 
select sum(amount) from orders group by customer_id ;
select customer_name,sum(amount) from customers as c
join orders as o
where c.customer_id=o.customer_id group by customer_name;
select * from actor;
select * from film_actor;
select * from film;
select a.actor_id,a.first_name, count(f.film_id) from actor as a
join film_actor as f
where a.actor_id=f.actor_id
group by a.actor_id;



create database regexcorr;
use regexcorr;

CREATE TABLE employee (
    eid INT PRIMARY KEY,
    ename VARCHAR(50),
    salary INT,
    department_name VARCHAR(50)
);

INSERT INTO employee (eid, ename, salary, department_name) VALUES
(1,  'Emp1',  30000, 'HR'),
(2,  'Emp2',  32000, 'HR'),
(3,  'Emp3',  34000, 'HR'),
(4,  'Emp4',  36000, 'HR'),
(5,  'Emp5',  38000, 'HR'),

(6,  'Emp6',  50000, 'IT'),
(7,  'Emp7',  52000, 'IT'),
(8,  'Emp8',  54000, 'IT'),
(9,  'Emp9',  56000, 'IT'),
(10, 'Emp10', 58000, 'IT'),

(11, 'Emp11', 60000, 'Finance'),
(12, 'Emp12', 62000, 'Finance'),
(13, 'Emp13', 64000, 'Finance'),
(14, 'Emp14', 66000, 'Finance'),
(15, 'Emp15', 68000, 'Finance'),

(16, 'Emp16', 40000, 'Sales'),
(17, 'Emp17', 42000, 'Sales'),
(18, 'Emp18', 44000, 'Sales'),
(19, 'Emp19', 46000, 'Sales'),
(20, 'Emp20', 48000, 'Sales');
 
select * from empolyee;



create database regex1;
use regex;
create table test1(sno int); -- tables create(sno columns name)

describe test1;

  ---dml(insert statment)
  
  ---dml(insert,update,delete,merge);
insert into test1 values(10);
select * from test1;
insert into test1(sno) values(11);
insert into test1(sno) values(20),(null),(30); -- 3 row insert(multiple values)

select count(sno),count(*) from test1;
select sno from test1;
create table test2(sno int not null ,salery int);
insert into test2(sno,salery) values(20,1000);
insert into test2(sno,salery) values(20,null);
insert into test2(sno,salery) values(null,1000); --- we have set constraaint(error)

insert into test2(sno) values(1000);
insert into test2 (salery) values(5000000); --- error (beacause no null and no defalut set);

select * from test2;

create table test3(sno int not null default 80,salary int);
insert into test3(salary) values(1000);
insert into test3(sno) values(5000);

select * from test3;

create table test4(sno int not null ,salary int unique default 100);

select * from test4;
insert into test4(sno,salary) values(1000,20000);
insert into test4(sno,salary) values(1001,20000); --- error duplicate values

insert into test4(sno) values(600);
select * from test4;
insert into test4(sno) values(700);  --- error 100 is already in table
 
 insert into test4(sno,salary) values(1500,null);
 insert into test4(sno,salary) values(1500,null);
 
 ---- conditions
 ---- check conditions
 create table test7(sno int,salary int,
 check (sno between 1 and 100),
 check(salary in (1000,2000) ));
 
drop table test7;
create table test7(sno int,salary int,
 constraint regex_test7_sno_chk check (sno between 1 and 100),
 constraint regex_test7_sno_chk check(salary in (1000,2000) ));
 
 insert into test7(sno,salary) values(4,1000);
 select * from test7;
 insert into test7(sno,salary) values(150,1000); --- eroorr
 insert into test7(sno,salary) values(90,1500); --- error
 
 --- varchar(20)
create table empolyee(empolyee_id int primary key,salary int,email int unique,collage int default 100,age int,gordian int);