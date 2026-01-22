/* 
=======================================================================================
                        BRONZE LAYER: SOURCE DATA CAPTURE
=======================================================================================
SCRIPT:         ddl_bronze.sql
SCHEMA:         bronze
PURPOSE:        Create bronze layer tables to store source data exactly as received
DESCRIPTION:    This script creates tables in the bronze schema, dropping existing
                tables if they already exist.
PRINCIPLES:     Immutable Storage | Data Lineage | Source Fidelity
AUTHOR:         Milena B. Stevovic
CREATED:        2025-12-23
=======================================================================================
*/

USE AppleDW2024;
GO

-- 1. Creating Category Table (Static reference data)
-- Source columns (exact as CSV)
IF OBJECT_ID('bronze.crm_prod_category', 'U') IS NOT NULL
    DROP TABLE bronze.crm_prod_category;
GO

CREATE TABLE bronze.crm_prod_category
(
    category_id VARCHAR(20),
    -- Allowing any format from source    
    category_name VARCHAR(100)
);
GO

PRINT 'bronze.crm_prod_category table created successfully.';
GO

-- 2. Creating Products Table (Product master data)
IF OBJECT_ID('bronze.crm_products', 'U') IS NOT NULL
    DROP TABLE bronze.crm_products;
GO

CREATE TABLE bronze.crm_products
(
    product_id VARCHAR (20),
    product_name VARCHAR (100),
    category_id VARCHAR (20),
    launch_date DATE,
    price INT
);
GO

PRINT 'bronze.crm_products table created successfully.';
GO

-- 3. Creating Sales Table (Transactional fact data)
IF OBJECT_ID('bronze.crm_sales', 'U') IS NOT NULL
    DROP TABLE bronze.crm_sales;
GO

CREATE TABLE bronze.crm_sales
(
    sale_id VARCHAR (20),
    sale_date VARCHAR (20),
    store_id VARCHAR (20),
    product_id VARCHAR (20),
    quantity INT
);
GO

PRINT 'bronze.crm_sales table created successfully.';
GO

-- 4. Creating Stores Table (Store master data)
IF OBJECT_ID('bronze.erp_stores', 'U') IS NOT NULL
    DROP TABLE bronze.erp_stores;
GO

CREATE TABLE bronze.erp_stores
(
    store_id VARCHAR (20),
    store_name VARCHAR (100),
    city VARCHAR (100),
    country VARCHAR (100)
);
GO

PRINT 'bronze.erp_stores table created successfully.';
GO

-- 5. Creating Warranty Table (Warranty claims data)
IF OBJECT_ID('bronze.erp_warranty', 'U') IS NOT NULL
    DROP TABLE bronze.erp_warranty;
GO

CREATE TABLE bronze.erp_warranty
(
    claim_id VARCHAR (20),
    claim_date DATE,
    sale_id VARCHAR (20),
    repair_status VARCHAR (50)
);
GO

PRINT 'bronze.erp_warranty table created successfully.';
GO
