--Where did the racing socks go? List the product name and the CompanyName for all Customers who ordered ProductModel 'Racing Socks'.
SELECT p.Name,c.CompanyName  FROM SalesLT.PRODUCT p
INNER JOIN SalesLT.SalesOrderDetail sod
ON sod.ProductID = p.ProductID
INNER JOIN SalesLT.SalesOrderHeader soh
ON soh.SalesOrderID = sod.SalesOrderID
INNER JOIN SalesLT.Customer c
ON c.CustomerID= soh.CustomerID
INNER JOIN SalesLT.ProductModel pm
ON pm.ProductModelID = p.ProductModelID
WHERE pm.Name = 'Racing Socks'
