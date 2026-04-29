-- =========================
-- TABLE CREATION
-- =========================

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

-- =========================
-- ARITHMETIC QUERIES
-- =========================

-- 1. Total Value in Stock
SELECT product_name, price * stock_quantity AS total_value
FROM Products;

-- 2. Sale Price Calculation ($5 discount)
SELECT product_name, price - 5 AS sale_price
FROM Products;

-- 3. Price Increase Projection (10% increase)
SELECT product_name, price * 1.10 AS increased_price
FROM Products;

-- 4. Annual Salary
SELECT name, monthly_salary * 12 AS annual_salary
FROM Employees;

-- 5. Bonus Amount
SELECT name, monthly_salary * (bonus_percent / 100) AS bonus_amount
FROM Employees;

-- 6. Even or Odd ID
SELECT product_id, product_id % 2 AS remainder
FROM Products;

-- 7. Shared Stock (split into 4 warehouses)
SELECT product_name, stock_quantity / 4 AS items_per_location
FROM Products;

-- 8. Profit Margin (cost = $2)
SELECT product_name, price - 2 AS profit_per_unit
FROM Products;

-- 9. Total Compensation (salary + $200)
SELECT name, monthly_salary + 200 AS total_compensation
FROM Employees;

-- 10. Bulk Order Discount (50 units - $100)
SELECT product_name, (price * 50) - 100 AS bulk_order_cost
FROM Products;