USE [master]
RESTORE DATABASE [AdventureWorksLT2019] FROM  DISK = N'F:\SG C# course\training\SQL\AdventureWorksLT2019.bak'
WITH  FILE = 1,
MOVE N'AdventureWorksLT2012_Data' TO N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\AdventureWorksLT2012.mdf', 
MOVE N'AdventureWorksLT2012_Log' TO N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\AdventureWorksLT2012_log.ldf', 
NOUNLOAD,  STATS = 5

GO


