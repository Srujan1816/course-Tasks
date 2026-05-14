use company_db;


INSERT INTO employees (emp_id,emp_name, salary, department)
VALUES
(1, 'Rahul', 50000, 'HR'),
(2, 'Sneha', 60000, 'Finance'),
(3, 'Arjun', 55000, 'IT'),
(4, 'Priya', 45000, 'Marketing'),
(5, 'Kiran', 70000, 'Sales');
select * from employees;


select COUNT(*) from employees;

select COUNT(salary) from employees;

select COUNT(DISTINCT department) from employees;

select sum(salary) from employees;

select avg(salary) from employees;

select min(salary) from employees;

select max(salary) from employees;

select avg(salary-(salary*0.10)  AS avg_sal_tax
from employees;