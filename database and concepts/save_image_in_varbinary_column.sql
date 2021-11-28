USE MyDB
INSERT INTO dbo.DatabaseImageTable ([image name], [image])
SELECT 'SQL Server Image', *
FROM OPENROWSET(BULK N'C:\Users\Emoyee\Desktop\mountain.jpg', SINGLE_BLOB) image;