/*
=========================================
Create Database and Schemas
=========================================
Script Purpose:
This script creates a new database named 'DataWarehouse' after checking
if it is already exists.
If the databse exists, it is dropped and recreated. Additionally, the 
scripts sets up three schemas within the databse: 'bronze', 'silver'and 'gold'


Warning:
	Running this script will drop the entire 'DataWarehouse' database if it exists.
	All data in the database will be permanently deleted. Proceed with caution and
	ensure you have proper backups before running this scripts.


*/


USE master;
GO


-- Drop and recreate the 'Datawarehouse' database

IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
  ALTER DATABASE DataWarehouse SET SINGLE USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE DataWarehouse;
END;
GO


-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;

Use DataWarehouse;
GO

--Create Schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
