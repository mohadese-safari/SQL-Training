USE MyDB
INSERT INTO dbo.DatabaseImageTable ([image name], [real_image])
SELECT 'SQL Server Image 3', *
FROM OPENROWSET(BULK N'C:\Users\Emoyee\Desktop\mountain.jpg', SINGLE_BLOB) image;