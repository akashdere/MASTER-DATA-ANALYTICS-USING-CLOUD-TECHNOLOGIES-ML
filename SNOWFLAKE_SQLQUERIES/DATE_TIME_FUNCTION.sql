-- Get CURRENT DATE
SELECT CURRENT_DATE;

-- GET CURRENT TIME AND DATE
SELECT CURRENT_TIMESTAMP;

-- GET CURRENT TIME
SELECT CURRENT_TIME;

-- converting the time to specific time zone.

SELECT CONVERT_TIMEZONE('UTC',CURRENT_TIMESTAMP);

-- tO EXTRACT YEAR,MONTH,QUARTER FROM DATE.

SELECT CURRENT_TIMESTAMP,
    YEAR(CURRENT_TIMESTAMP),
    MONTH(CURRENT_TIMESTAMP),
    WEEK(CURRENT_TIMESTAMP),
    DAY(CURRENT_TIMESTAMP),
    TIME(CURRENT_TIMESTAMP),
    HOUR(CURRENT_TIMESTAMP),
    MINUTE(CURRENT_TIMESTAMP),
    SECOND(CURRENT_TIMESTAMP),
    QUARTER(CURRENT_TIMESTAMP),
    DATE(CURRENT_TIMESTAMP);

-- WE CAN ALSO EXTRACT DATE,MONTH,YEAR AS FOLLOWS

SELECT EXTRACT(YEAR FROM CURRENT_DATE) AS YR,
       EXTRACT(MONTH FROM CURRENT_DATE) AS MNTH,
   --    EXTRACT(DATE FROM CURRENT_DATE) AS DTE,
       EXTRACT(DAY FROM CURRENT_DATE) AS DAY,
       EXTRACT(QUARTER FROM CURRENT_DATE) AS QUARTER;


SELECT DATE_TRUNC('YEAR',CURRENT_DATE) AS YRS_FR_DATE,
       DATE_TRUNC('QUARTER',CURRENT_DATE) AS QTR_FR_DATE,
       DATE_TRUNC('MONTH',CURRENT_DATE) AS MNTH_FR_DATE,
       DATE_TRUNC('WEEK',CURRENT_DATE) AS WEEK_FR_DATE,
       DATE_TRUNC('DAY',CURRENT_DATE) AS DAY_FR_DATE;


-- CONVERT DATE TO SEBSEQUENT 4 MONTHS AHEAD OR BEHIND.

SELECT ADD_MONTHS(CURRENT_DATE,4) AS DATE_AFTER_4_MONTHS,
       ADD_MONTHS(CURRENT_DATE,-4) AS DATE_BEFORE_4_MONTHS;

-- DATEDIFF AND DATEADD FUNCTION
SELECT DATEDIFF('DAY','2022-02-25',CURRENT_DATE) AS NO_OF_DAYS,
       DATEDIFF('WEEK','2022-02-25',CURRENT_DATE) AS NO_OF_WEEKS,
       DATEDIFF('MONTHS','2022-02-25',CURRENT_DATE) AS NO_OF_MONTHS,
       DATEDIFF('YEAR','2022-02-25',CURRENT_DATE) AS NO_OF_YEARS;

SELECT DATEADD('DAY',23,'2023-03-30'),
       DATEADD('WEEK',5,CURRENT_DATE),
       DATEADD('MONTHS',-2,CURRENT_DATE),
       DATEADD('YEARS',2,'2020-03-25');

-- IF DATE IS GIVEN IN SOME DIFFERENT FORMAT THAN YYYY-MM-DD YOU CAN CONVERT THE GIVEN FORMAT BY SPECIFING THE FORMAT OF ARGUMENT PASS
SELECT TO_DATE('23/04/2021','DD/MM/YYYY');
SELECT TO_DATE('2023-05-06') AS DATE; -- CAN BE USED TO CONVERT DATE IN VARCHAR FORMAT TO DATE FORMAT.
SELECT TO_DATE('08-17-1996') AS DATE;

-- IN ORDER TO CONVERT DATE DATA TYPE TO VARCHAR

SELECT TO_CHAR(TO_DATE('08/07/2023','DD/MM/YYYY'),'MM/DD/YYYY') AS DATE;
SELECT TO_CHAR(TO_DATE('08/07/2023','DD/MM/YYYY'),'MON/YYYY') AS DATE;
SELECT TO_CHAR(TO_DATE('2023-12-29'),'DD/MM/YYYY') AS DATE;
SELECT TO_CHAR(TO_DATE('2023-12-29'),'DY-DD-MM-YYYY') AS DATE;

SELECT DAYNAME('2003-12-23');


Select * from "bank_data_all" limit 100;
select distinct YEAR("date") FROM "bank_data_all";

-- WHERE EVER TRNX YEAR IS 2021 SET THE BANK = UCO BANK
UPDATE DEMO_DATABASE.PUBLIC."bank_data_all" 
SET "bank" = 'UCO BANK'
WHERE YEAR("date") = 2021;

-- WHERE EVER TRNX YEAR IS 2020 SET THE BANK = DBS BANK
UPDATE DEMO_DATABASE.PUBLIC."bank_data_all" 
SET "bank" = 'DBS BANK'
WHERE YEAR("date") = 2020;

-- WHERE EVER TRNX YEAR IS 2019 SET THE BANK = CANARA BANK
UPDATE DEMO_DATABASE.PUBLIC."bank_data_all" 
SET "bank" = 'CANARA BANK'
WHERE YEAR("date") = 2019;

-- WHERE EVER TRNX YEAR IS 2018 SET THE BANK = YES BANK
UPDATE DEMO_DATABASE.PUBLIC."bank_data_all" 
SET "bank" = 'YES BANK'
WHERE YEAR("date") = 2018;


-- WHERE EVER TRNX YEAR IS 2017 SET THE BANK = ICICI BANK
UPDATE DEMO_DATABASE.PUBLIC."bank_data_all" 
SET "bank" = 'ICICI BANK'
WHERE YEAR("date") = 2017;

-- WHERE EVER TRNX YEAR IS 2016 SET THE BANK = HDFC BANK
UPDATE DEMO_DATABASE.PUBLIC."bank_data_all" 
SET "bank" = 'HDFC BANK'
WHERE YEAR("date") = 2016;

SELECT "bank",COUNT("txn_id") FROM "bank_data_all"
GROUP BY "bank"
ORDER BY 2 DESC;

SELECT DISTINCT("type") FROM "bank_data_all";
-- FOR EVERY YEAR HOW MANY TOTAL WITHDRAWAL COUNT,AMOUNT AND TOTAL DEPOSIT HAS HAPPENED FOR EVERY BANK
-- WHAT IS THE TPC = TOTAL TRX/TOTAL CUSTOMER FOR EVERY BANK YEARWISE QUARTERLY DATA

SELECT "bank",YEAR("date") AS TXN_YR,QUARTER("date") AS TXN_QTR,MONTH("date") AS TXN_MTHS,
SUM(CASE WHEN "type" = 'Credit' THEN "amount" END) AS TOT_CREDIT_AMT,
SUM(CASE WHEN "type" = 'Withdrawal' THEN "amount" END) AS TOT_WITHDEAWAL_AMT,
TOT_CREDIT_AMT - TOT_WITHDEAWAL_AMT AS TOT_BALANCE,
COUNT(CASE WHEN "type" = 'Credit' THEN 1 END) AS TOT_CREDIT_COUNT,
COUNT(CASE WHEN "type" = 'Withdrawal' THEN 1 END) AS TOT_WITHDEAWAL_COUNT,
TOT_CREDIT_COUNT + TOT_WITHDEAWAL_COUNT AS TOT_TXN_COUNT,
-- COUNT("txn_id") AS TOT_TXN_COUNT,
-- SUM("amount") AS TOT_TXN_AMT,

COUNT(DISTINCT "account_id") AS TOT_CUSTOMERS,
ROUND(TOT_TXN_COUNT/TOT_CUSTOMERS,0) AS TPC,
ROUND(TOT_BALANCE/TOT_CUSTOMERS,0) AS APC

FROM "bank_data_all"
GROUP BY 1,2,3,4
ORDER BY TOT_BALANCE DESC;
