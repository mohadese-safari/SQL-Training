--Retrieve a list of customers with no address
--A sales employee has noticed that Adventure Works does not have address information for all customers. 
--You must write a query that returns a list of customer IDs, company names, contact names (first name and last name),
--and phone numbers for customers with no address stored in the database.

SELECT c.CustomerID, c.CompanyName,c.FirstName,c.LastName,c.Phone
FROM SalesLT.CUSTOMER c
LEFT OUTER JOIN SalesLT.CustomerAddress ca
ON ca.CustomerID = c.CustomerID
WHERE ca.AddressID  is NULL

