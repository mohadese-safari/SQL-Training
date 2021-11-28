--How many products in ProductCategory 'Cranksets' have been sold to an address in 'London'?
SELECT sum(sod.OrderQty)  as 'Cranksets sold in London'
FROM SalesLT.SalesOrderDetail sod
JOIN SalesLT.SalesOrderHeader soh
ON sod.SalesOrderID=soh.SalesOrderID
JOIN SalesLT.Product p
ON p.ProductID = sod.ProductID
JOIN SalesLT.ProductCategory pc
ON p.ProductCategoryID = pc.ProductCategoryID
JOIN SalesLT.Address ad
ON ad.AddressID = soh.ShipToAddressID
WHERE pc.Name='Cranksets' and City='London'

-- Better joining product category as well and not to hard code the product category id