-- select * from shop.customers; 

-- select * from shop.customers
-- where left (Customername, 1) = 'B' and CustomerID < 10;

-- select * from shop.customers
-- where CustomerName like 'B%' and CustomerID < 10;

-- --#---#-#-#---#--#--#---#

-- select * from shop.customers;

-- select CustomerName from shop.customers;

-- select country from shop.customers;

-- remove duplicates
-- select distinct country from shop.customers;


-- select CustomerName from shop.customers order by CustomerName desc;

-- select CustomerName
-- from shop.customers
-- order by CustomerName asc;

-- select CustomerID, CustomerName from shop.customers limit 50;

-- select CustomerName, City
-- from shop.customers
-- where city='Berlin';

-- select ProductName, price
-- from shop.products
-- where ProductName='Almond Milk'
-- and Price < 30;

-- select CustomerName, Address, Country
-- from shop.customers
-- where CustomerName like 'A%'


-- select * from shop.customers
-- where CustomerName like 'B%' and CustomerID < 10;

-- SELECT * FROM customers
-- WHERE CustomerName LIKE 'B%' AND CustomerID < 10;


-- select ProductName, Price from shop.products
-- where Price in (28, 30, 24)
-- order by ProductName;


-- select OrderDate from shop.orders;


-- select * from shop.orders
-- where OrderDate between '2023-08-18 00:00:00' and '2023-08-18 23:59:59'
-- order by OrderDate asc;

-- SELECT * FROM orders
-- WHERE OrderDate BETWEEN '2023-08-18 00:00:00' AND '2023-08-18 23:59:59'
-- ORDER BY OrderDate ASC;

-- select distinct city
-- from shop.customers
-- where City like '%N'
-- order by City desc;

-- SELECT DISTINCT city
-- FROM customers
-- WHERE City LIKE '%N'
-- ORDER BY City DESC;


-- select ContactName
-- from shop.suppliers
-- where ContactName like '%S' and (Country = 'Spain' or Country = 'USA');

-- select CustomerName as CompanyName
-- from shop.customers
-- where ContactName like '%S'
-- and (Country = 'Spain' or Country = 'USA');

-- SELECT CustomerName AS CompanyName FROM customers
-- WHERE ContactName LIKE '%S'
-- AND (Country = 'Spain' or Country = 'USA');


-- select OrderID, OrderDate, EmployeeID 
-- from shop.orders
-- where EmployeeID is null;

-- SELECT OrderID, OrderDate, EmployeeID 
-- FROM orders
-- WHERE EmployeeID IS NULL;

-- select BirthDate from shop.employees

-- select * from shop.employees
-- where year(BirthDate) between 1950 and 1959
-- or year(BirthDate) between 1980 and 1989;

-- select * from shop.employees
-- where BirthDate between '1950-01-01' and '1959-12-31' or BirthDate between '1980-01-01' and '1989-12-31';

-- SELECT * FROM employees
-- WHERE BirthDate BETWEEN '1950-01-01' AND '1959-12-31'
-- OR BirthDate BETWEEN '1980-01-01' AND '1989-12-31';

-- select * from shop.orderdetails
-- where OrderID between 10300 and 10350
-- and ProductID <= 40
-- and Quantity in (10, 20, 30, 40)
-- order by Quantity desc;

-- SELECT * FROM orderdetails
-- WHERE OrderID BETWEEN 10300 AND 10350
-- AND ProductID <= 40
-- AND Quantity IN (10, 20, 30, 40)
-- ORDER BY Quantity DESC;


-- select * from shop.suppliers

-- select * from shop.suppliers
-- where Phone like '%(___)__-__%';

-- select * from shop.suppliers
-- where Phone like '%(__)____-__%';

-- SELECT * FROM suppliers
-- WHERE Phone LIKE '%(__)____-__%';


-- select * from shop.products
-- where Price between 20 and 40
-- and CategoryID in (2, 4, 6)
-- or ProductName like 'A%'

-- SELECT * FROM products
-- WHERE (Price BETWEEN 20 AND 40)
-- AND (CategoryID IN (2, 4, 6)
-- OR ProductName LIKE 'A%');


-- select * from shop.products

-- select * from shop.products
-- where (Unit like '% g %' or Unit like '% kg %')
-- and (SupplierID between 5 and 10)
-- and (CategoryID between 5 and 10);

-- SELECT * FROM shop.products
-- WHERE (Unit LIKE '% g %' OR Unit LIKE '% kg %')
-- AND (SupplierID BETWEEN 5 AND 10)
-- AND (CategoryID BETWEEN 5 AND 10);


-- SELECT *
-- FROM shop.orders
-- WHERE EmployeeID IS NULL;

-- exercise 2 practice ------------------------------------------------------------------------------------------------------

-- select avg(price) as average_price
-- from shop.products

-- select sum(price) as sum_price
-- from shop.products

-- select min(price) as min_price, max(price) as max_price
-- from shop.products

-- select count(*)
-- from shop.products
-- where Price > 100;

-- select count(*)
-- from shop.customers
-- where Country = 'Germany';


-- select * from shop.employees

-- select substring(column_name, index_position, starting_position)
-- select FirstName, substring(FirstName, 2, 4) as part_part
-- from shop.employees
-- order by FirstName;

-- select FirstName, substring(FirstName from 2 for 3) as part_part
-- from shop.employees
-- order by FirstName;


-- select left(column_name, index_position)
-- select FirstName, left(FirstName, 3)
-- from shop.employees


-- select right(column_name, index_position)
-- select FirstName, right(FirstName, 3) as from_right_start
-- from shop.employees
-- from shop.employees


-- select firstname, upper(FirstName) as Uppercase
-- from shop.employees

-- select firstname, lower(FirstName) as lowercase
-- from shop.employees

-- select * 
-- from shop.employees
-- where length(FirstName) = 5

-- select concat(FirstName, ' ', LastName) as fullname
-- from shop.employees
-- order by FirstName asc

-- select round(avg(Price), 2)
-- from shop.products



-- -----------------------------------------------------------------------------
-- select *
-- from shop.customers

-- select count(*) as postalcode_count
-- from shop.customers
-- where length(postalcode) = 5;

-- SELECT COUNT(*) AS postalcode_count
-- FROM customers
-- WHERE LENGTH(postalcode) = 5;


-- select * 
-- from shop.products

-- select min(price), max(price)
-- from shop.products
-- where (productName like 'A%') or (productName like 'E%') or (productName like 'K%') or (productName like 'M%');


-- SELECT MIN(price), MAX(price)
-- FROM products
-- WHERE (productName LIKE 'A%') OR (productName LIKE 'E%') OR (productName LIKE 'K%') OR (productName LIKE 'M%');


-- select round(avg(CategoryID), 2)
-- from shop.products
-- order by price desc



-- select CategoryID, round(avg(CategoryID), 2) as average_price
-- from shop.products
-- group by CategoryID
-- order by average_price desc;

-- SELECT CategoryID, ROUND(AVG(CategoryID), 2) AS average_price
-- FROM products
-- GROUP BY CategoryID
-- ORDER BY average_price DESC;




-- select concat(FirstName, ' ', LastName, ' is born in ', left(BirthDate, 4)) as employee_info
-- from shop.employees
-- order by BirthDate;

-- select concat(FirstName, ' ', LastName, ' is born in ', year(BirthDate)) as employee_info
-- from shop.employees
-- order by BirthDate;

-- SELECT CONCAT(FirstName, ' ', LastName, ' is born in ', LEFT(BirthDate, 4)) AS employee_info
-- FROM employees
-- ORDER BY BirthDate;


-- select * from shop.orders

-- select EmployeeID, count(*) as order_count
-- from shop.orders
-- group by EmployeeID
-- having count(*) > 20;

-- SELECT EmployeeID, COUNT(*) AS order_count
-- FROM orders
-- GROUP BY EmployeeID
-- HAVING COUNT(*) > 20;



-- select SupplierID, sum(Price) as total_price, round(avg(Price)) as average_price, count(*) as amount_of_products, sum(case when Price is null then 1 else 0 end) as null_count
-- from shop.products
-- group by SupplierID;

-- select SupplierID, sum(Price) as total_price, round(avg(Price)) as average_price, count(*) as amount_of_products, count(*) - count(price) as null_count
-- from shop.products
-- group by SupplierID;

-- SELECT SupplierID, SUM(Price) AS total_price, ROUND(AVG(Price)) AS average_price, COUNT(*) AS amount_of_products, COUNT(*) - COUNT(price) AS null_count
-- FROM products
-- GROUP BY SupplierID;


-- select * from shop.suppliers

-- select Phone,
-- 	case
-- 		when Phone like '%(%)%' and Phone like '%-%' then 'Valid'
-- 		when Phone like '%(%)%' or Phone like '%-%' then 'Partly valid'
-- 		else 'Not a phone number'
-- 	end as category
-- from shop.suppliers


-- SELECT Phone,
-- 	CASE
-- 		WHEN Phone LIKE '%(%)%' AND Phone LIKE '%-%' THEN 'Valid'
-- 		WHEN Phone LIKE '%(%)%' OR Phone LIKE '%-%' THEN 'Partly valid'
-- 		ELSE 'Not a phone number'
-- 	END AS category
-- FROM shop.suppliers


-- select * from shop.orders

-- select CustomerID, count(OrderID) as number_of_orders
-- from shop.orders
-- where (ShipperID = 1 or ShipperID = 3)
-- group by CustomerID
-- having count(OrderID) >= 3;

SELECT CustomerID, COUNT(OrderID) AS number_of_orders
FROM orders
WHERE (ShipperID = 1 or ShipperID = 3)
GROUP BY CustomerID
HAVING COUNT(OrderID) >= 3;