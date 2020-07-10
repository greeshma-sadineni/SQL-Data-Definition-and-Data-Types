select name from sys.tables
exec sp_MSforeachtable 'Drop table ?'