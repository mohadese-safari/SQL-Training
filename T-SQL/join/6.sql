--Retrieve a list of customers and products without orders

--Some customers have never placed orders, and some products have never been ordered. 
--Create a query that returns a column of customer IDs for customers who have never placed an order, 
--and a column of product IDs for products that have never been ordered.
--Each row with a customer ID should have a NULL product ID 
--(because the customer has never ordered a product) 
--and each row with a product ID should have a NULL customer ID (because the product has never been ordered by a customer).

SELECT c.CustomerID,p.ProductID FROM SalesLT.Customer c
LEFT OUTER JOIN SalesLT.SalesOrderHeader soh
ON c.CustomerID=soh.CustomerID

LEFT OUTER JOIN SalesLT.SalesOrderDetail sod
ON sod.SalesOrderID = soh.SalesOrderID

FULL OUTER JOIN SalesLT.Product p
ON p.ProductID=sod.ProductID

WHERE c.CustomerID is NULL or p.ProductID IS NULL
-- Testing equaliy of result rows in a different way :)
--GROUP BY c.CustomerID,p.ProductID
