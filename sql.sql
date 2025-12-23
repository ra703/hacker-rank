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
