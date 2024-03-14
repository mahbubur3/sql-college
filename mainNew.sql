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

-- SELECT CustomerID, COUNT(OrderID) AS number_of_orders
-- FROM orders
-- WHERE (ShipperID = 1 or ShipperID = 3)
-- GROUP BY CustomerID
-- HAVING COUNT(OrderID) >= 3;


-- ----------------------------------
-- select * 
-- from shop.orders inner join shop.orderdetails
-- on orders.OrderID = orderdetails.OrderID

-- select * 
-- from shop.products inner join shop.shippers
-- on products.ProductID = shippers.ShipperID

-- select P.ProductName, C.CategoryName, P.Price
-- from shop.products P
-- left join categories C on P.CategoryID = C.CategoryID
-- order by P.ProductName;

-- SELECT P.ProductName, C.CategoryName, P.Price
-- FROM shop.products P
-- LEFT JOIN categories C ON P.CategoryID = C.CategoryID
-- ORDER BY P.ProductName;

-- select *
-- from shop.products
-- where Price > (
-- 	select avg(Price) from Products
-- )
-- order by Price desc;

-- SELECT *
-- FROM shop.products
-- WHERE Price > (
-- 	SELECT AVG(Price) 
--     FROM Products
-- )
-- ORDER BY Price DESC;

-- SELECT CONCAT(E.FirstName, ' ', E.LastName) AS full_name, COUNT(O.OrderID) AS amount
-- FROM shop.employees E
-- INNER JOIN Orders O ON E.EmployeeID = O.EmployeeID
-- GROUP BY E.EmployeeID
-- HAVING COUNT(O.OrderID) >= 2
-- ORDER BY amount DESC;


-- select shippers.ShipperName, sum(orderdetails.Quantity) as ProductsTransferred
-- from shop.Shippers shippers
-- join Orders orders on shippers.ShipperID = orders.ShipperID
-- join OrderDetails orderdetails on orders.OrderID = orderdetails.OrderID
-- group by shippers.ShipperName;

-- SELECT s.ShipperName, SUM(od.Quantity) as TotalProductsTransferred
-- FROM shop.Shippers s
-- JOIN Orders o ON s.ShipperID = o.ShipperID
-- JOIN OrderDetails od ON o.OrderID = od.OrderID
-- GROUP BY s.ShipperName;

-- SELECT s.ShipperName, COUNT(od.OrderDetailID) AS TotalProductsTransferred
-- FROM shop.Shippers s
-- JOIN Orders o ON s.ShipperID = o.ShipperID
-- JOIN Orderdetails od ON o.OrderID = od.OrderID
-- GROUP BY s.ShipperName;

-- select * from shop.orderdetails

-- select * from shop.orders

-- SELECT s.ShipperName, SUM(od.Quantity) as products_transferred_total
-- FROM shop.Shippers s
-- JOIN Orders o ON s.ShipperID = o.ShipperID
-- JOIN OrderDetails od ON o.OrderID = od.OrderID
-- GROUP BY s.ShipperName;

-- SELECT s.SupplierName
-- FROM shop.suppliers s
-- JOIN products p ON s.SupplierID = p.SupplierID
-- WHERE p.Price < (SELECT AVG(Price) FROM products)
-- UNION
-- SELECT s.SupplierName
-- FROM suppliers s
-- WHERE LENGTH(s.ContactName) > 12;

-- SELECT s.SupplierName
-- FROM shop.suppliers s
-- JOIN products p ON s.SupplierID = p.SupplierID
-- WHERE p.Price < (
-- 	SELECT AVG(Price)
--     FROM products
-- )
-- UNION
-- SELECT s.SupplierName
-- FROM suppliers s
-- WHERE LENGTH(s.ContactName) > 12;



-- SELECT DISTINCT SupplierName
-- FROM shop.suppliers
-- WHERE SupplierID IN (
--     SELECT SupplierID
--     FROM products
--     WHERE Price < (
--         SELECT AVG(Price)
--         FROM products
--     )
-- )
-- UNION
-- SELECT DISTINCT SupplierName
-- FROM suppliers
-- WHERE LENGTH(ContactName) > 12;


-- SELECT c.Country, COUNT(o.OrderID) AS orders_total
-- FROM shop.customers c
-- JOIN orders o ON c.CustomerID = o.CustomerID
-- GROUP BY c.Country
-- ORDER BY orders_total DESC
-- LIMIT 5;


-- select o.OrderID, Sum(od.Quantity * p.Price) as TotalPrice
-- from orders o
-- join orderdetails od on o.OrderID = od.OrderID
-- join products p on od.ProductID = p.ProductID
-- group by o.OrderID
-- having count(od.ProductID) >= 5
-- order by TotalPrice desc;


-- SELECT o.OrderID, SUM(od.Quantity * p.Price) AS TotalPrice
-- FROM orders o
-- JOIN orderdetails od ON o.OrderID = od.OrderID
-- JOIN products p ON od.ProductID = p.ProductID
-- WHERE o.OrderID IN (
-- 	SELECT OrderID 
-- 	FROM orderdetails 
-- 	GROUP BY OrderID 
-- 	HAVING COUNT(ProductID) >= 5
-- )
-- GROUP BY o.OrderID
-- ORDER BY TotalPrice DESC;


-- SELECT s.SupplierName
-- FROM shop.suppliers s
-- INNER JOIN products p ON s.SupplierID = p.SupplierID
-- GROUP BY s.SupplierName, p.Unit
-- HAVING COUNT(p.ProductID) >= 5 AND p.Unit = 'Box';

-- SELECT 
--     s.SupplierID, 
--     s.SupplierName
-- FROM 
--     suppliers s
-- JOIN 
--     products p ON s.SupplierID = p.SupplierID
-- WHERE 
--     p.Unit LIKE '%box%'
-- GROUP BY 
--     s.SupplierID, 
--     s.SupplierName
-- HAVING 
--     COUNT(p.ProductID) >= 5;


-- select * from shop.products


-- SELECT 
--     s.SupplierID,
--     s.SupplierName,
--     COUNT(p.ProductID) AS TotalProducts
-- FROM 
--     suppliers s
-- JOIN 
--     products p ON s.SupplierID = p.SupplierID
-- WHERE 
--     p.Unit LIKE '% boxes %'
-- GROUP BY 
--     s.SupplierID, s.SupplierName
-- HAVING 
--     COUNT(p.ProductID) >= 5;


-- SELECT CustomerName 
-- FROM customers 
-- WHERE CustomerID NOT IN (
-- 	SELECT CustomerID
--     FROM orders
-- )
-- UNION
-- SELECT c.CustomerName 
-- FROM customers c
-- JOIN orders o ON c.CustomerID = o.CustomerID
-- JOIN orderdetails od ON o.OrderID = od.OrderID
-- JOIN products p ON od.ProductID = p.ProductID
-- WHERE p.Price > 100;



-- SELECT c.*
-- FROM customers c
-- INNER JOIN suppliers s
-- ON c.City = s.City AND c.PostalCode = s.PostalCode
-- UNION
-- SELECT c.*
-- FROM customers c
-- WHERE LENGTH(c.CustomerName) >= (
-- 	SELECT MAX(LENGTH(SupplierName)) - 5
-- 	FROM suppliers
-- );

-- SELECT c.*
-- FROM customers c
-- INNER JOIN suppliers s ON c.City = s.City AND c.PostalCode = s.PostalCode
-- UNION
-- SELECT c.*
-- FROM customers c
-- INNER JOIN (
--   SELECT SupplierName, MAX(LENGTH(SupplierName)) AS longest_name
--   FROM suppliers
--   GROUP BY SupplierName
-- ) AS long_names
-- ON c.CustomerName LIKE CONCAT(long_names.SupplierName, '%')
-- WHERE LENGTH(c.CustomerName) <= long_names.longest_name - 5;


-- SELECT * FROM customers
-- WHERE City IN (SELECT City FROM suppliers)
-- AND PostalCode IN (SELECT PostalCode FROM suppliers)
-- UNION
-- SELECT * FROM customers
-- WHERE LENGTH(CustomerName) >= (SELECT MAX(LENGTH(SupplierName)) - 5 FROM suppliers);


-- copilot
-- SELECT s.SupplierName, COUNT(p.ProductID) AS NumberOfProducts
-- FROM suppliers s
-- JOIN products p ON s.SupplierID = p.SupplierID
-- WHERE p.Unit LIKE '%boxes%'
-- GROUP BY s.SupplierID, s.SupplierName
-- HAVING COUNT(p.ProductID) >= 5;

-- chat gpt
-- SELECT s.SupplierID, s.SupplierName, COUNT(p.ProductID) AS ProductCount
-- FROM suppliers s
-- JOIN products p ON s.SupplierID = p.SupplierID
-- WHERE p.Unit = 'boxes'
-- GROUP BY s.SupplierID, s.SupplierName
-- HAVING COUNT(p.ProductID) >= 5;

-- gemini
-- SELECT s.SupplierName
-- FROM suppliers AS s
-- INNER JOIN products AS p ON s.SupplierID = p.SupplierID
-- WHERE p.Unit = ' boxes '
-- GROUP BY s.SupplierName
-- HAVING COUNT(p.ProductID) >= 5;


-- select * from shop.products
-- SELECT s.SupplierID, s.SupplierName
-- FROM shop.suppliers s
-- JOIN (
--     SELECT SupplierID
--     FROM shop.products
--     WHERE Unit = ' boxes '
--     GROUP BY SupplierID
--     HAVING COUNT(ProductID) >= 5
-- ) AS subquery ON s.SupplierID = subquery.SupplierID;

-- SELECT s.SupplierName
-- FROM suppliers AS s
-- INNER JOIN products AS p ON s.SupplierID = p.SupplierID
-- WHERE p.Unit = 'boxes'
-- GROUP BY s.SupplierName
-- HAVING COUNT(p.ProductID) >= 5;


-- select * from shop.products
-- select * from shop.suppliers
-- where (Unit like '%boxes%')


-- SELECT s.SupplierID, s.SupplierName
-- FROM suppliers s
-- JOIN products p ON s.SupplierID = p.SupplierID
-- WHERE p.Unit LIKE '%boxes%'
-- GROUP BY s.SupplierID, s.SupplierName
-- HAVING COUNT(p.ProductID) >= 5;




-- SELECT s.SupplierName
-- FROM suppliers s
-- INNER JOIN products p ON s.SupplierID = p.SupplierID
-- WHERE TRIM(p.Unit) LIKE '%Boxes%' -- Use LIKE with wildcard (%) to match variations
-- GROUP BY s.SupplierID
-- HAVING COUNT(p.ProductID) >= 5;


-- SELECT s.SupplierID, s.SupplierName
-- FROM suppliers s
-- JOIN products p ON s.SupplierID = p.SupplierID
-- WHERE p.Unit LIKE '%boxes%'
-- GROUP BY s.SupplierID, s.SupplierName
-- HAVING COUNT(p.ProductID) >= 5;



-- SELECT s.SupplierID, s.SupplierName
-- FROM suppliers s
-- JOIN products p ON s.SupplierID = p.SupplierID
-- WHERE p.Unit LIKE '%boxes%'
-- GROUP BY s.SupplierID, s.SupplierName
-- HAVING COUNT(p.ProductID) >= 5;



-- sql basics 4---------------------------------------

-- create database school

-- create table student(
-- 	studentID int not null auto_increment,
--     firstName varchar(40) not null,
--     lastName varchar(60) not null,
--     address varchar(40) not null,
--     phone varchar(15),
--     email varchar(50),
--     primary key(studentID)
-- );

-- create table participation(
-- 	participationID int not null auto_increment,
--     studentID int not null,
--     dateOfParticipation date not null,
--     primary key(participationID),
--     foreign key(studentID) references student(studentID)
-- );

-- CREATE TABLE departments (
--     DepartmentID VARCHAR(8) NOT NULL,
--     DepartmentName VARCHAR(50) NOT NULL,
--     Duty VARCHAR(50) NOT NULL,
--     Budget DECIMAL(10, 2) NOT NULL,
--     StartDate DATE NOT NULL,
--     primary key (DepartmentID)
-- );
-- DELIMITER $$
-- CREATE TRIGGER validateDepartmentID
-- BEFORE INSERT ON departments
-- FOR EACH ROW
-- BEGIN
--     IF NEW.DepartmentID NOT REGEXP '^[A-Z]{4}[0-9]{4}$' THEN
--         SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'DepartmentID format wrong';
--     END IF;
-- END $$
-- DELIMITER ;


-- alter table departments
-- add column ManagerID int;

-- create table employees (
-- 	EmployeeID int,
--     FirstName varchar(50) not null,
--     LastName varchar(50) not null,
--     DepartmentID varchar(8),
--     primary key (EmployeeID),
--     foreign key (DepartmentID) references departments(DepartmentID)
-- );

-- alter table departments
-- add constraint fk_manager_employee
-- foreign key (ManagerID) references employees(EmployeeID);

/*
create table tasks (
	TaskID int auto_increment,
    TaskName varchar(50),
    TaskDescription text,
    StartDate date,
    EndDatae date,
    TaskStatus varchar(20),
    Priority varchar(10),
    primary key (TaskID)
);

DELIMITER $$
create trigger check_status before insert on tasks
for each row
begin
	if new.TaskStatus not in ('In progress', 'Completed', 'Pending') then
		signal sqlstate '45000' set message_text = 'Invalid task status';
	end if;
end $$
DELIMITER $$

DELIMITER $$
create trigger check_priority before insert on tasks
for each row
begin
	if new.Priority not in ('High', 'Medium', 'Low') then
		signal sqlstate '45000' set message_text = 'Invalid priority';
	end if;
end $$
DELIMITER $$;
*/
 
 
-- create database school

-- create table student(
-- 	StudentID int not null auto_increment,
--     FirstName varchar(40) not null,
--     LastName varchar(60) not null,
--     Address varchar(40) not null,
--     phone varchar(15),
--     email varchar(50),
--     primary key (StudentID)
-- );

-- create table participation(
-- 	ParticipationID int not null auto_increment,
--     StudentID int not null,
--     DateOfParticipation date not null,
--     primary key (ParticipationID),
--     foreign key (StudentID) references student(StudentID)
-- );

-- add column
-- alter table participation
-- add column EnrollInformation longtext;

-- alter table student
-- modify column email varchar(60);

-- check table
-- describe participation;


-- alter table student
-- add column score int;
-- DELIMITER $$
-- create trigger check_score before insert on student
-- for each row
-- 	begin
-- 		if NEW.score < 10 then 
-- 			signal sqlstate "45000"
--             set message_text = "Score too low";
-- 		end if;
-- 	end $$

-- now insert and check validation
-- insert into student(FirstName, LastName, Address, phone, email, score)
-- values("John", "Smith", "NYC, USA", "+8946382", "johns@email.com", 10);

-- now check table
-- select * from student

/*
create table departments(
	DepartmentID varchar(8) not null,
    DepartmentName varchar(40) not null,
    Duty varchar(60) not null,
    Budget decimal(8, 2),
    StartDate date not null,
    primary key (DepartmentID)
);

DELIMITER $$
create trigger check_departmentID before insert on departments
for each row
	begin
		if new.DepartmentID not regexp '^[A-Z]{4}[0-9]{4}$' then
        signal sqlstate "45000"
			set message_text = "DepartmentID must be four letters followed by four numbers!";
		end if;
    end $$

insert into departments(DepartmentID, DepartmentName, Duty, Budget, StartDate)
values("aabd789", "Information Technology", "Data Entry", "8700.00", "2019-01-22")
*/
-- insert into departments(DepartmentID, DepartmentName, Duty, Budget, StartDate, ManagerID)
-- values("urts3442", "Writing", "Typing", "3980.00", "2020-01-30", 998); 

-- select * from departments

-- alter table departments
-- add column ManagerID int;

-- alter table departments
-- add constraint fk_department_manager
-- foreign key (ManagerID) references employees(EmployeeID);

-- select * from departments
-- select * from employees

-- alter table departments
-- drop column ManagerID;
-- ALTER TABLE departments DROP FOREIGN KEY FK_Manager_Employee;



-- ALTER TABLE departments
-- ADD COLUMN CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
-- ADD COLUMN UpdatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;



-- ALTER TABLE employees
-- ADD COLUMN DepartmentID int;

-- ALTER TABLE employees
-- ADD CONSTRAINT fk_employee_department
-- FOREIGN KEY (DepartmentID) REFERENCES departments(DepartmentID)

/*
CREATE TABLE tasks (
	TaskID INT AUTO_INCREMENT,
    TaskName VARCHAR(50),
    TaskDescription LONGTEXT,
    StartDate DATE,
    EndDate date,
    TaskStatus varchar(20),
    Priority varchar(20),
    primary key (TaskID)
);

DELIMITER $$
CREATE TRIGGER check_task_status BEFORE INSERT ON tasks
FOR EACH ROW
	BEGIN
		IF NEW.TaskStatus <> 'In progress' AND NEW.TaskStatus <> 'Completed' AND NEW.TaskStatus <> 'Pending' THEN
			SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'TaskStatues must be "In progress", "Completed", or "Pending"';
        END IF;
    END $$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER check_priority BEFORE INSERT ON tasks
FOR EACH ROW
	BEGIN
		IF NEW.Priority <> 'High' AND NEW.Priority <> 'Medium' AND NEW.Priority <> 'Low' THEN
			SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Priority must be "High", "Medium", or "Low"';
		END IF;
    END $$
DELIMITER ;
*/


-- ALTER TABLE tasks
-- ADD EmployeeID INT,
-- ADD FOREIGN KEY (EmployeeID) REFERENCES employees(EmployeeID);


/*
CREATE TABLE payment_methods (
	PaymentMethodID INT,
    PaymentType VARCHAR(30),
    IsCreditCard BOOLEAN NOT NULL,
    CardType VARCHAR(20) DEFAULT NULL,
    ExpirationDate DATE DEFAULT NULL,
    BillingAddress VARCHAR(20)
);

DELIMITER $$
CREATE TRIGGER check_credit_card before insert on payment_methods
FOR EACH ROW
	BEGIN
		IF NEW.IsCreditCard = TRUE THEN
			IF NEW.CardType IS NULL OR NEW.ExpirationDate IS NULL THEN
				SIGNAL SQLSTATE '45000'
					SET MESSAGE_TEXT = 'Error: CardType and ExpirationDate cannot be NULL when IsCreditCard is TRUE';
			END IF;
		END IF;
	END $$
DELIMITER ;
*/


/*
ALTER TABLE orders
ADD COLUMN PaymentMethodID INT;

ALTER TABLE orders
ADD FOREIGN KEY (PaymentMethodID) REFERENCES payment_methods(PaymentMethodID);
*/


/*
DELIMITER $$
CREATE TRIGGER check_insert_depatment BEFORE INSERT ON departments
FOR EACH ROW
	BEGIN
		IF NEW.Budget > 1000000 THEN
			SIGNAL SQLSTATE '45000'
				SET MESSAGE_TEXT = 'Cannot insert! Budget greater than one million';
		END IF;
        IF length(NEW.DepartmentID) != 8 THEN
			SIGNAL SQLSTATE '45000'
				SET MESSAGE_TEXT = 'Cannot insert! DepartmentID is not exactly eight characters long';
		END IF;
    END $$
*/


/*
DELIMITER $$
CREATE TRIGGER check_tasks_insert BEFORE INSERT ON tasks
FOR EACH ROW
	BEGIN
		IF NEW.EndDate < CURRENT_DATE THEN
			SIGNAL SQLSTATE '45000'
				SET MESSAGE_TEXT = 'Cannot insert! EndDate is int the past';
		END IF;
        IF NOT (NEW.Priority <> 'Low' AND NEW.Priority <> 'Medium' AND NEW.Priority <> 'High') THEN
			SIGNAL SQLSTATE '45000'
				SET MESSAGE_TEXT = 'Cannot insert! Priority must be one of the following: Low, Medium, High';
		END IF;
    END $$
*/

-- --------------------------------exercise 5
/*
INSERT INTO departments (DepartmentID, DepartmentName, Duty, Budget, StartDate, Manager, CreatedAt)
VALUES ('AAAA0001', 'North', 'Accounting', 200000, '2018-02-02', 'William Brown', CURRENT_DATE());

INSERT INTO departments (DepartmentID, DepartmentName, Duty, Budget, StartDate, Manager, CreatedAt)
VALUES ('AABB0002', 'South', 'Marketing', 400000, '2018-02-22', 'Steven Buchanan', CURRENT_DATE());

INSERT INTO departments (DepartmentID, DepartmentName, Duty, Budget, StartDate, Manager, CreatedAt)
VALUES ('AACC0003', 'West', 'Management', 800000, '2018-01-12', 'Janet Leverling', CURRENT_DATE());
*/


/*
insert into tasks (TaskName, TaskDescription, StartDate, EndDate, TaskStatus, Priority, Employee)
values
('Financial Report Analysis', 'Analyze and prepare financial reports for Q1', '2024-02-01', '2024-05-15', 'In Progress', 'High', 'John Smith'),
('Social Media Campaign', 'Plan and execute a social media marketing campaign', '2024-02-10', '2024-06-28', 'Pending', 'Medium', 'Michael Suyama'),
('Strategic Planning', 'Develop a strategic plan for the upcoming quarter', '2024-06-01', '2024-07-20', 'Not Started', 'High', 'Anna Davis');
*/


/*
ALTER TABLE tasks
ADD COLUMN EmployeeName VARCHAR(25);

INSERT INTO tasks(EmployeeID, EmployeeName)
VALUES
(1, 'John Smith'),
(2, 'Micheal Suyama'),
(3, 'Anna Davis');

INSERT INTO tasks (TaskName, TaskDescription, StartDate, EndDate, TaskStatus, Priority, EmployeeID)
VALUES
('Financial Report Analysis', 'Analyze and prepare financial reports for Q1', '2024-02-01', '2024-05-15', 'In Progress', 'High', 1),
('Social Media Campaign', 'Plan and execute a social media marketing campaign', '2024-02-10', '2024-06-28', 'Pending', 'Medium', 2),
('Strategic Planning', 'Develop a strategic plan for the upcoming quarter', '2024-06-01', '2024-07-20', 'Not Started', 'High', 3);
*/


/*
insert into payment_methods(PaymentType, IsCreditCard, CardType, ExpirationDate, BillingAddress)
values
('Credit card', 'Yes', 'Visa', '2024-12-31', '123 Main St Cityville'),
('PayPal', 'No', NULL, NULL, '202 Elm St Countryside'),
('Debit card', 'Yes', 'MasterCard', '2025-10-10', '789 Pine St Villagetown');
*/


/*
update employees
set DepartmentID = 'AABB0002'
where (LastName, FirstName) in (('Dodsworth', 'Anne'), ('Johnson','Emily'), ('Fuller','Andrew'));
*/


-- select * from orders
-- select * from customers


/*
update orders
set IsCreditCard = 'Yes', BillingAddress = '123 Main St Cityville'
where CustomerID = 10;
*/


/*
UPDATE tasks
SET TaskStatus = 'In progress', StartDate = CURDATE()
WHERE TaskName = 'Strategic Planning' AND EmployeeID = 3;
*/


