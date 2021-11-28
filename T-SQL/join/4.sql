--Retrieve a list of all customers and their orders
--The sales manager wants a list of all customer companies and their contacts (first name and last name),
--showing the sales order ID and total due for each order they have placed.
--Customers who have not placed any orders should be included at the bottom of the list with NULL values for the order ID and total due.

SELECT c.CompanyName, c.FirstName, c.LastName, soh.SalesOrderID, soh.TotalDue
FROM SalesLT.Customer c
LEFT OUTER JOIN SalesLT.SalesOrderHeader soh
ON c.CustomerID = soh.CustomerID
ORDER BY SalesOrderID DESC
