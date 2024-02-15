-- select * from shop.customers; 

-- select * from shop.customers
-- where left (Customername, 1) = 'B' and CustomerID < 10;

-- select * from shop.customers
-- where CustomerName like 'B%' and CustomerID < 10;

-- --#---#-#-#---#--#--#---#---#--#--#-#----#-----

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

-- &&&&&&&&&&&&&&&&&&&&&&&&&&
-- select ContactName
-- from shop.suppliers
-- where ContactName like '%S' and (Country = 'Spain' or Country = 'USA');
-- &&&&&&&&&&&&&&&&&&&&&&&&&&

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

-- &&&&&&&&&&&&&&&&&&&&&&&&&&
-- select * from shop.suppliers
-- where Phone like '%(___)__-__%';

-- select * from shop.suppliers
-- where Phone like '%([0-9][0-9])%-%';
-- &&&&&&&&&&&&&&&&&&&&&&&&&&


-- select * from shop.products

-- select * from shop.products
-- where (Unit = 'g' or Unit = 'kg')
-- and SupplierID between 5 and 10
-- and CategoryID between 5 and 10;

-- select * from shop.products
-- where Unit in ('g', 'kg')
-- and SupplierID between 5 and 10
-- and CategoryID between 5 and 10;

SELECT *
FROM shop.products
WHERE Unit IN ('g', 'kg')
AND SupplierID IN (5, 6, 7, 8, 9, 10)
AND CategoryID IN (5, 6, 7, 8, 9, 10);
