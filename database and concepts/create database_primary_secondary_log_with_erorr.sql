USE Master
CREATE DATABASE MyDB

ON PRIMARY
(Name = 'MyDB_Primary',
-- Specify your file path to your instance folder and name your file
FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\MyDB_Primary.mdf',
SIZE = 2MB,
MAXSIZE = 50MB,
FILEGROWTH = 1MB),

FILEGROUP MyDB_Secondary
(NAME = 'MyDB_Secondary',
--As with your Primary, Specify your instance path and name your Secondary File
FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\MyDB_Secondary.ndf',
SIZE = 2MB,
MAXSIZE = 50MB,
FILEGROWTH = 1MB)

LOG ON
(NAME = 'MyDB_Logging',
--As with your Primary and Secondary, specify your instance path and name your Log File
FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\MyDB_Log.ldf',
SIZE = 1MB,
MAXSIZE = 20MB,
FILEGROWTH = 1MB)
GO
ALTER DATABASE MyDB
MODIFY FILEGROUP MyDB_Primary DEFAULT