USE [master]
GO
CREATE DATABASE [AdventureWorksLT2019] ON 
( FILENAME = N'G:\AdventureWorksLT2012.mdf' ),
( FILENAME = N'G:\AdventureWorksLT2012_log.ldf' )
 FOR ATTACH
GO
