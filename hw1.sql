create table employees(
employee_id int primary key,
first_name varchar(50) not null,
last_name varchar(50) not null,
title varchar(50) not null,
birth_date date not null,
notes text not null);

create table customers(
customer_id char(5) primary key,
company_name varchar(100) not null,
contact_name varchar(100) not null);

create table orders(
order_id int primary key,
customer_id char(5) references customers(customer_id) not null,
employee_id int references employees(employee_id) not null,
order_date date not null,
ship_city varchar(50) not null);

select * from orders;
select * from customers;
select * from employees