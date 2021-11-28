
SELECT distinct s1 FROM 
(SELECT SalesOrderID s1,count(*) as item_count FROM SalesLT.SalesOrderDetail Group by SalesOrderID) as t, SalesLT.SalesOrderDetail
where item_count=1
--Group by SalesOrderID;

SELECT * FROM SalesLT.SalesOrderDetail
WHERE SalesOrderID = 71776


