CREATE DATABASE Retail;

USE Retail;
DEMO_DATABASE.DB_DWH
USE SCHEMA Public;

CREATE OR REPLACE TABLE AD_DEMOGRAPHIC_RAW
(AGE_DESC	CHAR(20),
MARITAL_STATUS_CODE	CHAR(5),
INCOME_DESC	VARCHAR(40),
HOMEOWNER_DESC	VARCHAR(40),
HH_COMP_DESC	VARCHAR(50),
HOUSEHOLD_SIZE_DESC	VARCHAR(50),
KID_CATEGORY_DESC	VARCHAR(40),
household_key INT PRIMARY KEY
);

SELECT * from DEMO_DATABASE.PUBLIC."Track TXN";
SELECT * from DEMO_DATABASE.PUBLIC."Transcation_TXN_EXT" ;

SELECT * FROM RETAIL.PUBLIC.AD_DEMOGRAPHIC_RAW;--- all the data from all the columns

SELECT COUNT(*) FROM RETAIL.PUBLIC.AD_DEMOGRAPHIC_RAW; --- Gives total no. of records

SELECT MARITAL_STATUS_CODE,INCOME_DESC,HOUSEHOLD_KEY,HOUSEHOLD_SIZE_DESC
FROM AD_DEMOGRAPHIC_RAW
WHERE INCOME_DESC = '125-149K'
ORDER BY 1,4 DESC; ---  Here if not given 1 will be Ascending and 4 Descending

CREATE OR REPLACE TABLE AD_Customers
(
customer_id number (10) NOT NULL,
customer_name varchar2(50) NOT NULL,
city varchar2(50),
PRIMARY KEY (customer_id)
);

INSERT INTO AD_Customers
VALUES(1,'Anand Jha','Bengaluru'),(2,'Anish','Bengaluru'),(3,'Ramesh','Delhi');

SELECT * FROM AD_Customers;

INSERT INTO AD_CUSTOMERS
VALUES(1,'Niharkia','Ranchi');--- Snowflake will insert this record even if customer_id is duplicated as snowflake doesn't enforce 
 --primary key

INSERT INTO AD_CUSTOMERS
VALUES (4,'Divya','');

INSERT INTO AD_CUSTOMERS
VALUES (5,'Jwala','');

INSERT INTO AD_CUSTOMERS(customer_ID,customer_name)
VALUES (6,'Kalpana');

INSERT INTO AD_CUSTOMERS
VALUES (7,'David','');

INSERT INTO AD_CUSTOMERS(customer_ID,customer_name)
VALUES (6,'Akash');

SELECT * FROM AD_CUSTOMERS WHERE city is NULL;
SELECT * FROM AD_CUSTOMERS WHERE city = '';

SELECT * FROM AD_CUSTOMERS;
Select customer_ID,customer_name,city,count(*) from AD_CUSTOMERS
Group by 1,2
having count(*)>1;

SELECT COUNT(distinct *) From AD_CUSTOMERS;
--- COunt(*) gives all the distinct rows dosen't matter if null/blanks value is present it counts all.(Here 9 records)

SELECT COUNT(city) From AD_CUSTOMERS;-- will give 7 citys will omit null values but include blanks.

SELECT COUNT(DISTINCT City) FROM AD_CUSTOMERS;-- Will give 4 city (Bengluru,Delhi,Ranchi and blank) will exclude NULL

SELECT * FROM AD_CUSTOMERS
ORDER BY City; --- In order by for ascending Blank First then A-Z then Null.

DELETE FROM AD_CUSTOMERS WHERE CUSTOMER_NAME IN ('Divya','Jwala','Anand Jha','Akash');

/* Concept of Distinct and Unique
Distinct is all the values from column counted without repeating.
Unique is counting only those values that have never repeated */

-- In order to create only table structure by copying the previous table structure.

CREATE OR REPLACE TABLE AD_CUSTOMERS_COPY LIKE AD_CUSTOMERS;

SELECT * FROM AD_CUSTOMERS_COPY;

-- In order to create a table with structure and data.
-- Method 1

CREATE OR REPLACE TABLE AD_CUSTOMERS_COPY1 CLONE AD_CUSTOMERS;

SELECT * FROM AD_DEMO_DATABASE.PUBLIC.AD_CUSTOMERS_COPY1;

-- Method 2

CREATE OR REPLACE TABLE AD_CUSTOMERS_COPY2 AS 
SELECT * FROM AD_CUSTOMERS;
SELECT * FROM AD_DEMO_DATABASE.PUBLIC.AD_CUSTOMERS_COPY2;

CREATE OR REPLACE TABLE AD_CUSTOMERS_COPY3 AS 
SELECT * FROM AD_CUSTOMERS LIMIT 2; -- LIMIT is used while copying the table if we required only some top rows.
--- Limit gives you preview of the data i.e any random rows upto the specified limit in snowflake. In MySQl first limited rows.

SELECT TOP 100 * From RETAIL.PUBLIC.AD_DEMOGRAPHIC_RAW;

SELECT * From RETAIL.PUBLIC.AD_DEMOGRAPHIC_RAW limit 100;

SELECT * From RETAIL.PUBLIC.AD_DEMOGRAPHIC_RAW;

SELECT * FROM AD_DEMO_DATABASE.PUBLIC.AD_CUSTOMERS_COPY3;

DESCRIBE TABLE AD_CUSTOMERS;-- Gives table meta data. Gives details about column like contrain,Keys etc.

SHOW COLUMNS IN AD_CUSTOMERS; 

-- What.s my current user, role, warehouse, database etc.?
SELECT CURRENT_USER;
SELECT CURRENT_ROLE();
SELECT CURRENT_WAREHOUSE();
SELECT CURRENT_DATABASE();
SELECT CURRENT_ACCOUNT();
SELECT CURRENT_AVAILABLE_ROLES();
SELECT CURRENT_CLIENT();

-- How do I use a specific role,warehouse,database etc,?
SHOW ROLES;
USE ROLE{role};

SHOW WAREHOUSES;
USE WAREHOUSE{warehouse};

SELECT * FROM INFORMATION_SCHEMA.DATABASES;

-- How do I set my default warehouse?
-- Determine the current warehouse

SELECT CURRENT_WAREHOUSE();

-- Alter your default warehouse
ALTER USER {username} SET DEFAULT_WAREHOUSE = {warehouse};

ALTER USER AKASHDERE SET DEFAULT_WAREHOUSE = AD_DEMO_WAREHOUSE;

-- Grant usage on a database and warehouse to a role
SHOW GRANTS TO ROLE{role};--- Will show role access
GRANT USAGE ON WAREHOUSE {warehouse} TO ROLE {role};
GRANT USAGE ON DATABASE {database} TO ROLE {role};
GRANT USAGE ON TABLE {table name} TO ROLE {ROLE_NAME};