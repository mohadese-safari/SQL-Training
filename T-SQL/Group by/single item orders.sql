--A "Single Item Order" is a customer order where only one item is ordered. Show the SalesOrderID and the UnitPrice for every Single Item Order.
SELECT distinct s1, up_avg as 'Average unit price' FROM 
	(SELECT SalesOrderID s1,AVG(UnitPrice) as up_avg,count(*) as item_count
	FROM SalesLT.SalesOrderDetail 
	Group by SalesOrderID)as t
where item_count=1


--Test
SELECT * FROM SalesLT.SalesOrderDetail
WHERE SalesOrderID = 71774

