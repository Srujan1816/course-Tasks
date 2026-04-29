use d13r;
CREATE TABLE Products (
    product_id INT,
    product_name VARCHAR(100),
    price DECIMAL(10,2),
    discount DECIMAL(5,2),
    stock_quantity INT
);

CREATE TABLE Employees (
    emp_id INT,
    name VARCHAR(100),
    monthly_salary DECIMAL(10,2),
    bonus_percent DECIMAL(5,2)
);

INSERT INTO Products (product_id, product_name, price, discount, stock_quantity) VALUES
(1, 'Laptop', 50000.00, 10, 20),
(2, 'Smartphone', 20000.00, 5, 50),
(3, 'Headphones', 1500.00, 8, 100),
(4, 'Keyboard', 800.00, 3, 75),
(5, 'Mouse', 500.00, 2, 120);


INSERT INTO Employees (emp_id, name, monthly_salary, bonus_percent) VALUES
(101, 'Ravi', 30000.00, 10),
(102, 'Sita', 35000.00, 12),
(103, 'Arjun', 40000.00, 15),
(104, 'Priya', 28000.00, 8),
(105, 'Kiran', 32000.00, 10);
SELECT product_name, price * stock_quantity AS total_value
FROM Products;


SELECT product_name, price - 5 AS sale_price
FROM Products;


SELECT product_name, price * 1.10 AS increased_price
FROM Products;


SELECT name, monthly_salary * 12 AS annual_salary
FROM Employees;


SELECT name, monthly_salary * (bonus_percent / 100) AS bonus_amount
FROM Employees;


SELECT product_id, product_id % 2 AS remainder
FROM Products;


SELECT product_name, stock_quantity / 4 AS items_per_location
FROM Products;


SELECT product_name, price - 2 AS profit_per_unit
FROM Products;


SELECT name, monthly_salary + 200 AS total_compensation
FROM Employees;


SELECT product_name, (price * 50) - 100 AS bulk_order_cost
FROM Products;