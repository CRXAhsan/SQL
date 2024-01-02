use NORTHWND
--We have a table called Shippers. Return all the fields from all the shippers
Select * FROM Shippers

--We only want to see two columns, CategoryName and Description.
select Categories.CategoryName , Categories.Description from Categories

--We’d like to see just the FirstName, LastName, and HireDate of all the employees with the Title of Sales
--Representative. Write a SQL statement that returns only those employees.

select Employees.FirstName, Employees.LastName, Employees.HireDate FROM Employees 
WHERE Employees.Title = 'Sales Representative' 

--Now we’d like to see the same columns as above, but only for those employees that both have the title of Sales
--Representative, and also are in the United States

select Employees.FirstName, Employees.LastName, Employees.HireDate FROM Employees 
WHERE Employees.Title = 'Sales Representative' AND Employees.Country = 'USA'

--Show all the orders placed by a specific employee. The EmployeeID for this Employee (Steven Buchanan) is 5.
Select * From Orders 
JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
Where Employees.EmployeeID = 5;

--In the Suppliers table, show the SupplierID, ContactName, and ContactTitle for those Suppliers
--whose ContactTitle is not Marketing Manager.

select Suppliers.SupplierID, Suppliers.ContactName, Suppliers.ContactTitle FROM Suppliers 
WHERE Suppliers.ContactTitle != 'Marketing Manager'

--In the products table, we’d like to see the ProductID and ProductName for those products where the ProductName
--includes the string “queso”.

select Products.ProductID, Products.ProductName from Products
WHERE Products.ProductName LIKE '%queso%'

--Looking at the Orders table, there’s a field called ShipCountry. Write a query that shows the OrderID,
--CustomerID, and ShipCountry for the orders where the ShipCountry is either France or Belgium.

SELECT Orders.OrderID, Orders.CustomerID, Orders.ShipCountry FROM Orders
WHERE Orders.ShipCountry IN ('France','Belgium')


--Now, instead of just wanting to return all the orders from France of Belgium, we want to show all the orders from
--any Latin American country. But we don’t have a list of Latin American countries in a table in the Northwind
--database. So, we’re going to just use this list of Latin American countries that happen to be in the Orders table:
--Brazil Mexico Argentina Venezuela It doesn’t make sense to use multiple Or statements anymore, it would get
--too convoluted. Use the In statement.

SELECT Orders.OrderID, Orders.CustomerID, Orders.ShipCountry FROM Orders
WHERE Orders.ShipCountry IN ('Brazil','Mexico', 'Argentina','Venezuela')

--For all the employees in the Employees table, show the FirstName, LastName, Title, and BirthDate. Order the
--results by BirthDate, so we have the oldest employees first.

SELECT 



