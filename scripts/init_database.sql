/*
Script Purpose:
This script creates a new database named 'AppleDW2024' only if the database does not exist.
It will fail if the database already exists. Additionally, the script sets up three schemas within the database: 'bronze', 'silver', and 'gold'.
*/

USE master;
GO

-- Create the 'AppleDW2024' database
IF NOT EXISTS (SELECT 1
FROM sys.databases
WHERE name = 'AppleDW2024')
BEGIN
    CREATE DATABASE AppleDW2024;
    PRINT 'AppleDW2024 database created successfully.';
END
ELSE
BEGIN
    PRINT 'AppleDW2024 database already exists.';
    PRINT 'WARNING: Existing data will remain unchanged.';
END
GO


USE AppleDW2024;
GO

-- Create Bronze schema
IF NOT EXISTS (SELECT 1
FROM sys.schemas
WHERE name = 'bronze')
BEGIN
    EXEC('CREATE SCHEMA bronze');
    PRINT 'bronze schema created successfully.';
END
GO

-- Create Silver schema
IF NOT EXISTS (SELECT 1
FROM sys.schemas
WHERE name = 'silver')
BEGIN
    EXEC('CREATE SCHEMA silver');
    PRINT 'silver schema created successfully.';
END
GO

-- Create Gold schema
IF NOT EXISTS (SELECT 1
FROM sys.schemas
WHERE name = 'gold')
BEGIN
    EXEC('CREATE SCHEMA gold');
    PRINT 'gold schema created successfully.';
END
GO
