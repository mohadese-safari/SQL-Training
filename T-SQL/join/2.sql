--Retrieve customer orders with addresses
SELECT Customer.CompanyName, CustomerAddress.CustomerID,CustomerAddress.AddressID ,Address.AddressLine1
FROM SalesLT.CustomerAddress INNER JOIN SalesLT.Address 
ON SalesLT.CustomerAddress.AddressID = SalesLT.Address.AddressID
INNER JOIN SalesLT.SalesOrderHeader
ON SalesLT.SalesOrderHeader.CustomerID= CustomerAddress.CustomerID
INNER JOIN SalesLT.Customer
ON SalesLT.Customer.CustomerID = CustomerAddress.CustomerID

--Solution
SELECT c.CompanyName, a.AddressLine1, ISNULL(a.AddressLine2, '') AS AddressLine2,
a.City, a.StateProvince, a.PostalCode, a.CountryRegion, oh.SalesOrderID, oh.TotalDue
FROM SalesLT.Customer AS c
JOIN SalesLT.SalesOrderHeader AS oh
ON oh.CustomerID = c.CustomerID
JOIN SalesLT.CustomerAddress AS ca
ON c.CustomerID = ca.CustomerID AND AddressType = 'Main Office'
JOIN SalesLT.Address AS a
ON ca.AddressID = a.AddressID;