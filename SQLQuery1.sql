--Referenced instructions from Murach's SQL Server 2016 for Developers
--Page 25

/*This query creates a brand new database and back ups that database to the c drive*/
create database Test_1
backup database Test_1
To disk = 'C:\Database Backups\Test_1db.bak'
/*Line 1 created the database "Test_1"
Line 2 started the backup command 
and line 3 designated the location in which the backup was made which was the C drive in the Folder "Database Backups"

--[Test_1] database was created

