--write a query that returns the company name from the SalesLT.Customer table, and the sales order ID and total due from the SalesLT.SalesOrderHeader table.
SELECT SalesLT.Customer.CompanyName, SalesLT.SalesOrderHeader.SalesOrderID, SalesLT.SalesOrderHeader.TotalDue
FROM SalesLT.Customer INNER JOIN SalesLT.SalesOrderHeader
ON (SalesLT.Customer.CustomerID=SalesLT.SalesOrderHeader.CustomerID)
