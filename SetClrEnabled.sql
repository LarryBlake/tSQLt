EXEC sp_configure 'clr enabled', 1
GO
RECONFIGURE
GO
DECLARE @cmd NVARCHAR(MAX);
SET @cmd='ALTER DATABASE ' + QUOTENAME(DB_NAME()) + ' SET TRUSTWORTHY ON;';
EXEC(@cmd);
GO
