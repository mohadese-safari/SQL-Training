--Show the product description for culture 'fr' for product with ProductID 736.
SELECT description FROM SalesLT.ProductModelProductDescription ppd
JOIN SalesLT.ProductDescription pd
ON pd.ProductDescriptionID = ppd.ProductDescriptionID
JOIN SalesLT.ProductModel pm
ON ppd.ProductModelID = pm.ProductModelID
JOIN SalesLT.Product p 
ON p.ProductModelID = pm.ProductModelID
WHERE Culture='fr' and p.ProductID = 736 

