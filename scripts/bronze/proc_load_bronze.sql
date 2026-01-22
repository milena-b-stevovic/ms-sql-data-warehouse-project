/*
===========================================================================================
                LOADING SOURCE DATA INTO BRONZE LAYER TABLES
===========================================================================================
SCRIPT:             proc_load_bronze.sql
SCHEMA:             bronze
PURPOSE:            Loads data from external CSV files into bronze layer tables.
                    Truncates existing data before loading to ensure fresh ingestion.    
FILE ASSUMPTIONS:   All CSV files are comma-delimited with headers
                    Files are located in a specific directory    
WARNING:            This procedure TRUNCATES all bronze tables before loading.
                    Ensure you have backups or have moved data to silver/gold layers first.
AUTHOR:             Milena B. Stevovic
CREATED:            2025-12-23
===========================================================================================
*/

CREATE OR ALTER PROCEDURE bronze.load_bronze
AS
BEGIN
    DECLARE @start_time DATETIME, @end_time DATETIME, @batch_start_time DATETIME, @batch_end_time DATETIME;
    BEGIN TRY
        SET @batch_start_time = GETDATE();
        PRINT '=============================================================';
        PRINT 'LOADING DATA INTO BRONZE LAYER / FULL LOAD';
        PRINT '=============================================================';

        PRINT '-------------------------------------------------------------';
        PRINT 'I. Loading data from CRM tables';
        PRINT '-------------------------------------------------------------';

        SET @start_time = GETDATE();
        PRINT '-- Truncating crm_prod_category table';
        TRUNCATE TABLE bronze.crm_prod_category;

        PRINT '-- Inserting data into crm_prod_category table';
        BULK INSERT bronze.crm_prod_category
        FROM 'D:\DW_Apple_Project\data\crm_prod_category.csv'
        WITH(
            FIRSTROW = 2,
            FIELDTERMINATOR = ',',
            TABLOCK
        );        
        SET @end_time = GETDATE();
        PRINT '-- Load Duration: ' + CAST(DATEDIFF(SECOND, @start_time, @end_time) AS NVARCHAR) + ' seconds.';
        PRINT '------------------------------';

        SET @start_time = GETDATE();
        PRINT '-- Truncating crm_products table';
        TRUNCATE TABLE bronze.crm_products;

        PRINT '-- Inserting data into crm_products table';
        BULK INSERT bronze.crm_products
        FROM 'D:\DW_Apple_Project\data\crm_products.csv'
        WITH(
            FIRSTROW = 2,
            FIELDTERMINATOR = ',',
            TABLOCK
        );
        SET @end_time = GETDATE();
        PRINT '-- Load Duration: ' + CAST(DATEDIFF(SECOND, @start_time, @end_time) AS NVARCHAR) + ' seconds.';
        PRINT '------------------------------';

        SET @start_time = GETDATE();
        PRINT '-- Truncating crm_sales table';
        TRUNCATE TABLE bronze.crm_sales;

        PRINT '-- Inserting data into crm_sales table';
        BULK INSERT bronze.crm_sales
        FROM 'D:\DW_Apple_Project\data\crm_sales.csv'
        WITH(
            FIRSTROW = 2,
            FIELDTERMINATOR = ',',
            TABLOCK
        );
        SET @end_time = GETDATE();        
        PRINT '-- Load Duration: ' + CAST(DATEDIFF(SECOND, @start_time, @end_time) AS NVARCHAR) + ' seconds.';
        PRINT '';

        PRINT '-------------------------------------------------------------';
        PRINT 'II. Loading data from ERP tables';
        PRINT '-------------------------------------------------------------';

        SET @start_time = GETDATE();
        PRINT '-- Truncating erp_stores table';
        TRUNCATE TABLE bronze.erp_stores;

        PRINT '-- Inserting data into erp_stores table';
        BULK INSERT bronze.erp_stores
        FROM 'D:\DW_Apple_Project\data\erp_stores.csv'
        WITH(
            FIRSTROW = 2,
            FIELDTERMINATOR = ',',
            TABLOCK
        );
        SET @end_time = GETDATE();
        
        PRINT '-- Load Duration: ' + CAST(DATEDIFF(SECOND, @start_time, @end_time) AS NVARCHAR) + ' seconds.';
        PRINT '------------------------------';

        SET @start_time = GETDATE();
        PRINT '-- Truncating erp_warranty table';
        TRUNCATE TABLE bronze.erp_warranty;

        PRINT '-- Inserting data into erp_warranty table';
        BULK INSERT bronze.erp_warranty
        FROM 'D:\DW_Apple_Project\data\erp_warranty.csv'
        WITH(
            FIRSTROW = 2,
            FIELDTERMINATOR = ',',
            TABLOCK
        );
        SET @end_time = GETDATE();
        
        PRINT '-- Load Duration: ' + CAST(DATEDIFF(SECOND, @start_time, @end_time) AS NVARCHAR) + ' seconds.';
        PRINT '------------------------------';

        SET @batch_end_time = GETDATE();
        PRINT '=============================================================';
        PRINT 'Loading Bronze Layer Completed';
        PRINT '-- Total Load Duration: ' + CAST(DATEDIFF(SECOND, @batch_start_time, @batch_end_time) AS NVARCHAR) + ' seconds.';
        PRINT '=============================================================';

    END TRY
    BEGIN CATCH
        PRINT '=============================================================';
        PRINT 'ERROR DURING BRONZE LAYER LOAD';
        PRINT 'Error Number:' + CAST(ERROR_NUMBER() AS VARCHAR);
        PRINT 'Error Message:' + ERROR_MESSAGE();
        PRINT 'Error Line:     ' + CAST(ERROR_LINE() AS VARCHAR);
        PRINT 'Error State:    ' + CAST(ERROR_STATE() AS VARCHAR);
        PRINT '=============================================================';
    END CATCH
END;

-- Executing the procedure for loading the data into Bronze Layer tables.
EXEC bronze.load_bronze;
