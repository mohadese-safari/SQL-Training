-- Group by without aggregatation
SELECT SalesOrderID s1,UnitPrice 
FROM SalesLT.SalesOrderDetail 
	Group by SalesOrderID,UnitPrice