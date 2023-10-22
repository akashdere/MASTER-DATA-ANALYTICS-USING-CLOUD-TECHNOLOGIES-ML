Create SCHEMA db_source;
Create SCHEMA db_dwh;
Create SCHEMA db_reporting;
DEMO_DATABASE.DB_SOURCE;


-- Autoincrement in snowflake

Create or replace table employees_auto
(
    row_number integer autoincrement start 5000 increment 10,
    employee_id number,
    salary number,
    Age number
);

insert into employees_auto(employee_id,salary,Age)
values(1,40000,41),
(2,50000,29),
(3,30000,35);

Select * from employees_auto;

-- Identity in snowflake
Create or replace table AD_employees_auto
(
    row_number integer IDENTITY(100,5),
    employee_id number,
    salary number,
    Age number
);

insert into AD_employees_auto(employee_id,salary,Age)
values(1,40000,41),
(2,50000,29),
(3,30000,35);

Select * from AD_employees_auto;


CREATE OR REPLACE TABLE TRANSACTION_RAW 
(household_key	INT,
BASKET_ID	INT,
DAY	INT,
PRODUCT_ID	INT,
QUANTITY	INT,
SALES_VALUE	FLOAT,
STORE_ID	INT,
RETAIL_DISC	FLOAT,
TRANS_TIME	INT,
WEEK_NO	INT,
COUPON_DISC	INT,
COUPON_MATCH_DISC INT);

create or replace file format RETAIL_TRNXS_CSV 
    type = 'csv' 
    compression = 'none' 
    field_delimiter = ','
    field_optionally_enclosed_by = 'none'
    skip_header = 1 ; 


CREATE OR REPLACE NOTIFICATION INTEGRATION RETAIL_TNRXS_INTEGRATION
ENABLED = TRUE
TYPE= QUEUE
NOTIFICATION_PROVIDER= AZURE_STORAGE_QUEUE
AZURE_STORAGE_QUEUE_PRIMARY_URI='https://adretailstroageaccount.queue.core.windows.net/adretailqueue'
AZURE_TENANT_ID='80b88865-57d9-4fc1-a1e6-3e8e896460f5';

SHOW INTEGRATIONS;

DESC NOTIFICATION INTEGRATION RETAIL_TNRXS_INTEGRATION;

---Primary blob service endpoint : https://snowflakesnowpipetesting.blob.core.windows.net/
----blob service sas url : https://snowflakesnowpipetesting.blob.core.windows.net/?sv=2022-11-02&ss=bfqt&srt=co&sp=rwdlacupytfx&se=2023-07-04T20:33:38Z&st=2023-07-04T12:33:38Z&spr=https&sig=wYuWw194d3BFX5P52u2A92NCOZZBLU2SfyyZPcGXzPg%3D


CREATE OR REPLACE STAGE TRANSACTION_STAGE
url = 'azure://adretailstroageaccount.blob.core.windows.net/ad-retail-container/'
credentials = (azure_sas_token='?sv=2022-11-02&ss=bfqt&srt=co&sp=rwdlacupiytfx&se=2023-09-09T15:43:11Z&st=2023-09-09T07:43:11Z&spr=https&sig=KOxVE8%2BXjr%2B%2BwwHKwsCGPUgHS1rBWl0cpakVUmrRC3I%3D'
);


SHOW STAGES;

LS @TRANSACTION_STAGE;




CREATE OR REPLACE PIPE "RETAIL_TRANSACTION_PIPE"
  auto_ingest = true
  integration = 'RETAIL_TNRXS_INTEGRATION'
  as
  copy into TRANSACTION_RAW
  from @TRANSACTION_STAGE
  file_format = RETAIL_TRNXS_CSV ;

SHOW PIPES;

SELECT COUNT(*) FROM TRANSACTION_RAW;

SELECT * FROM TRANSACTION_RAW ;
  
  
ALTER PIPE RETAIL_TRANSACTION_PIPE REFRESH;

DROP TABLE DEMO_DATABASE.PUBLIC."AD_czechdata_txn";

DROP TABLE DEMO_DATABASE.PUBLIC."AD_czechdata_txn_2016";

DROP TABLE DEMO_DATABASE.PUBLIC."AD_czechdata_txn_2017";

DROP TABLE DEMO_DATABASE.PUBLIC."AD_czechdata_txn_2018";

DROP TABLE DEMO_DATABASE.PUBLIC."AD_czechdata_txn_2019";

DROP TABLE DEMO_DATABASE.PUBLIC."AD_czechdata_txn_2020";

DROP TABLE DEMO_DATABASE.PUBLIC."AD_czechdata_txn_2021";


Select * from DEMO_DATABASE.PUBLIC."Transcation_TXN_EXT";

DELETE from DEMO_DATABASE.PUBLIC."Transcation_TXN_EXT" where "c1" : "Household key";





--- CREATING FIRST TABLE : CUSTOMERNEW
create or replace table customernew as 
select * from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.CUSTOMER limit 100;

select * from customernew;


--- CREATING FIRST TABLE : ORDERNEW
create or replace table ordernew as 
select * from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.ORDERS limit 100;
select * from ordernew;


--- CREATING OUTPUT TABLE : mastertable
create or replace table mastertable
(
CUSTOMER_KEY NUMBER(38),
CUSTOMER_NAME VARCHAR(200),
CUSTOMER_ADDRESS VARCHAR(200),
ORDER_KEY VARCHAR(200),
ORDER_STATUS VARCHAR(10)
);
select * from mastertable;