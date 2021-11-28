-- Left outer join example
SELECT FirstName,LastName, SalesOrderID
FROM SalesLT.Customer LEFT OUTER JOIN SalesLT.SalesOrderHeader
ON Customer.CustomerID = SalesOrderHeader.CustomerID

SELECT FirstName,LastName, SalesOrderID
FROM SalesLT.SalesOrderHeader LEFT OUTER JOIN  SalesLT.Customer
ON Customer.CustomerID = SalesOrderHeader.CustomerID


-- Right outer join example
SELECT FirstName,LastName, SalesOrderID
FROM SalesLT.Customer RIGHT OUTER JOIN SalesLT.SalesOrderHeader
ON Customer.CustomerID = SalesOrderHeader.CustomerID

SELECT FirstName,LastName, SalesOrderID
FROM SalesLT.SalesOrderHeader RIGHT OUTER JOIN  SalesLT.Customer
ON Customer.CustomerID = SalesOrderHeader.CustomerID