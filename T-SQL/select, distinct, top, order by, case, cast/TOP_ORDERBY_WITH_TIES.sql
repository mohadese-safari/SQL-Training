/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [SalesOrderID]
      ,[SalesOrderDetailID]
      ,[OrderQty]
      ,[ProductID]
      ,[UnitPrice]
      ,[UnitPriceDiscount]
      ,[LineTotal]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [AdventureWorksLT2019].[SalesLT].[SalesOrderDetail]

  SELECT TOP(20) PERCENT WITH TIES * FROM SalesLT.SalesOrderDetail
  ORDER BY UnitPrice


SELECT TOP(20) PERCENT  * FROM SalesLT.SalesOrderDetail
ORDER BY UnitPrice

