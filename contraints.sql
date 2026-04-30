use d13r;

create table user (
user_id int  primary key,
user_name varchar(10) NOT NULL,
user_ph_no bigint UNIQUE
);

desc employees;

alter table employees
modify   emp_id int unique;

desc students;

alter table students
modify sid int primary key;

alter table students
add std_add varchar(20) NOT NULL;

create table books(
book_code int primary key
);

alter table orders
modify order_id int primary key














