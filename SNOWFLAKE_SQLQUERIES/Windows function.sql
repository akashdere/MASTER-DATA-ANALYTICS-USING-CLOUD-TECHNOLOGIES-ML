DROP TABLE TOP_SCORERS;

--another way to insert data

CREATE OR REPLACE TABLE TOP_SCORERS AS
SELECT
'James Harden' AS player,
2335 AS points,
2020 AS season
UNION ALL
(SELECT
'Damian Lillard' AS player,
1978 AS points,
2020 AS season)
UNION ALL
(SELECT
'Devin Booker' AS player,
1863 AS points,
2020 AS season)
UNION ALL
(SELECT
'James Harden' AS player,
2818 AS points,
2019 AS season)
UNION ALL
(SELECT
'Paul George' AS player,
1978 AS points,
2019 AS season)
UNION ALL
(SELECT
'Kemba Walker' AS player,
2102 AS points,
2019 AS season)
UNION ALL
(SELECT
'Damian Lillard' AS player,
2067 AS points,
2019 AS season)
UNION ALL
( SELECT
'Richard Bartner' AS player,
2067 AS points,
2019 AS season)
UNION ALL
(SELECT
'Devin Booker' AS player,
1700 AS points,
2019 AS season)
UNION ALL
(SELECT
'Paul George' AS player,
1033 AS points,
2020 AS season)
UNION ALL
(SELECT
'Kemba Walker' AS player,
1145 AS points,
2020 AS season)
UNION ALL
(SELECT
'Adam Gilchrist' AS player,
1145 AS points,
2020 AS season);

SELECT * FROM TOP_SCORERS ORDER BY SEASON;

SELECT DISTINCT SEASON FROM TOP_SCORERS;

SELECT DISTINCT PLAYER,
FIRST_VALUE(POINTS) OVER(PARTITION BY PLAYER ORDER BY SEASON) AS FIRST_SEASON,
LAST_VALUE(POINTS) OVER(PARTITION BY PLAYER ORDER BY SEASON) AS LAST_SEASON,
((LAST_SEASON-FIRST_SEASON)/FIRST_SEASON)*100 AS PER_CHANGE
FROM TOP_SCORERS
ORDER BY PLAYER;

SELECT DISTINCT PLAYER,
FIRST_VALUE(POINTS) OVER( ORDER BY SEASON) AS FIRST_SEASON,
LAST_VALUE(POINTS) OVER( ORDER BY SEASON) AS LAST_SEASON,
((LAST_SEASON-FIRST_SEASON)/FIRST_SEASON)*100 AS PER_CHANGE
FROM TOP_SCORERS
ORDER BY PLAYER;

SELECT DISTINCT PLAYER,
FIRST_VALUE(POINTS) OVER( ORDER BY SEASON DESC) AS FIRST_SEASON,
LAST_VALUE(POINTS) OVER( ORDER BY SEASON DESC) AS LAST_SEASON,
((LAST_SEASON-FIRST_SEASON)/FIRST_SEASON)*100 AS PER_CHANGE
FROM TOP_SCORERS
ORDER BY PLAYER;

-- USING RANK,ROW_NUMBER,DENSE_RANK
SELECT SEASON,ROW_NUMBER() OVER(PARTITION BY SEASON ORDER BY POINTS DESC) AS ROWNUMBER,
RANK() OVER(PARTITION BY SEASON ORDER BY POINTS DESC) AS RANKIT,
DENSE_RANK() OVER(PARTITION BY SEASON ORDER BY POINTS DESC) AS DR,POINTS
FROM TOP_SCORERS
ORDER BY SEASON;

-- USING RANK,ROW_NUMBER,DENSE_RANK WITHOUT PARTITION BY
SELECT SEASON,ROW_NUMBER() OVER(ORDER BY POINTS DESC) AS ROWNUMBER,
RANK() OVER(ORDER BY POINTS DESC) AS RANKIT,
DENSE_RANK() OVER(ORDER BY POINTS DESC) AS DR,POINTS
FROM TOP_SCORERS
ORDER BY SEASON;


-------------------------------------------------------------------------------------------------------------------------------------------
CREATE OR REPLACE TABLE CONSUMER_COMPLAINTS
(
DATE_RECEIVED STRING ,
PRODUCT_NAME VARCHAR2(50) ,
SUB_PRODUCT VARCHAR2(60) ,
ISSUE_DESC VARCHAR2(100),
SUB_ISSUE VARCHAR2(100),
CONSUMER_COMPLAINT_NARRATIVE STRING,
Company_Public_Response STRING,
Company VARCHAR(60),
State_Name CHAR(4),
Zip_Code VARCHAR(20),
Tags_Name VARCHAR(50),
Consumer_Consent_Provided CHAR(50),
Submitted_Via STRING,
Date_Sent_to_Company STRING,
Company_Response_to_Consumer VARCHAR(50),
Timely_Response CHAR(6),
CONSUMER_DISPUTED CHAR(6),
COMPLAINT_ID NUMBER(12,0) NOT NULL PRIMARY KEY
);

SELECT * FROM CONSUMER_COMPLAINTS;
---- Apply some window functions on above for practice by going through below mentioned code.


CREATE OR REPLACE TABLE EMPLOYEE
(
EMPID INTEGER NOT NULL PRIMARY KEY,
EMP_NAME VARCHAR2(20),
JOB_ROLE STRING,
SALARY NUMBER(10,2)
);


INSERT INTO EMPLOYEE
VALUES('101','ANAND JHA','Analyst',50000);
INSERT INTO EMPLOYEE
VALUES(102,'ALex', 'Data Enginner',60000);
INSERT INTO EMPLOYEE
VALUES(103,'Ravi', 'Data Scientist',48000);
INSERT INTO EMPLOYEE
VALUES(104,'Peter', 'Analyst',98000);
INSERT INTO EMPLOYEE
VALUES(105,'Pulkit', 'Data Scientist',72000);
INSERT INTO EMPLOYEE
VALUES(106,'Robert','Analyst',100000);
INSERT INTO EMPLOYEE
VALUES(107,'Rishabh','Data Engineer',67000);
INSERT INTO EMPLOYEE
VALUES(108,'Subhash','Manager',148000);
INSERT INTO EMPLOYEE
VALUES(109,'Michaeal','Manager',213000);
INSERT INTO EMPLOYEE
VALUES(110,'Dhruv','Data Scientist',89000);
INSERT INTO EMPLOYEE
VALUES(111,'Amit Sharma','Analyst',72000);
SELECT * FROM EMPLOYEE;
update employee set job_role='Data Engineer'
where empid=102;
update employee set salary= 50000
where empid=104;


-------------------------------------------------------------WINDOW FUNCTIONS------------------------------------------------------------
-- SYNTAX : window_function_name(<exprsn>) OVER (<partition_by_clause> <order_clause>)

--- display total salary based on job profile
SELECT JOB_ROLE,SUM(SALARY) FROM EMPLOYEE
GROUP BY 1
ORDER BY 2 DESC;

select job_role,sum(salary) from employee
group by 1
order by 2 desc;

-- display total salary along with all the records ()every row value
SELECT * , SUM(SALARY) OVER() AS TOT_SALARY,
ROUND(SALARY / TOT_SALARY * 100,2) AS PERC_CONTRIBUTION
FROM EMPLOYEE
ORDER BY PERC_CONTRIBUTION DESC;

select *,sum(salary) over () as tot_salary,
round(salary/tot_salary * 100,2) as per_contribution
from employee
order by 3 desc;

-- display the MAX salary per job category for all the rows
SELECT *,
MAX(SALARY) OVER(PARTITION BY JOB_ROLE) AS MAX_JOB_SAL,
MIN(SALARY) OVER(PARTITION BY JOB_ROLE) AS MIN_JOB_SAL,
ROUND(SALARY / MAX_JOB_SAL * 100,2) AS MAX_PERC_CONTRIBUTION_JOB_ROLE,
ROUND(SALARY / MIN_JOB_SAL * 100,2) AS MIN_PERC_CONTRIBUTION_JOB_ROLE
FROM EMPLOYEE;

select distinct (job_role), max(salary) over (partition by job_role) as max_job_sal
from employee;

select distinct (job_role),max(salary) from employee
group by 1;
order by 2 desc;

--ORDER BY PERC_CONTRIBUTION_JOB_ROLE DESC;
select *,max(salary) over(partition by JOB_ROLE) as MAX_SAL ,
min(salary) over(partition by JOB_ROLE) as MIN_SAL,
SUM(salary) over(partition by JOB_ROLE) as TOT_SAL
from Employee;

select *,max(salary) over(partition by job_role) as max_dep_sal,
min(salary) over(partition by job_role) as min_dep_sal,
sum(salary) over(partition by job_role) as sum_dep_sal from employee;

--ARRANGING ROWS WITHIN EACH PARTITION BASED ON SALARY IN DESC ORDDER
WINDOW FUNCTIONS PART 2
select *,max(salary) over(partition by JOB_ROLE ORDER BY SALARY DESC) as MAX_SAL ,
min(salary) over(partition by JOB_ROLE ORDER BY SALARY ASC) as MIN_SAL,
SUM(salary) over(partition by JOB_ROLE) as TOT_SAL
from Employee
ORDER BY JOB_ROLE;

select *,max(salary) over(partition by job_role order by salary desc) as max_sal,
min(salary) over(partition by job_role) as min_sal,
sum(salary) over(partition by job_role ) as sum_sal
from employee
order by job_role;

-- ROW_NUMBER() It assigns a unique sequential number to each row of the table ...
--SELECT * FROM
SELECT * FROM
(SELECT *,ROW_NUMBER() OVER(PARTITION BY JOB_ROLE ORDER BY SALARY DESC) AS PART_ROW_NUM
FROM EMPLOYEE ) WHERE PART_ROW_NUM <=2;
--)
select * from
(select *,row_number() over (partition by job_role order by salary desc) as part_row_num 
from employee)
where part_row_num <= 2;

--WHERE PART_ROW_NUM <=2;
/* The RANK() window function, as the name suggests, ranks the rows within their partition based on the given condition.
In the case of ROW_NUMBER(), we have a sequential number.
On the other hand, in the case of RANK(), we have the same rank for rows with the same value.
But there is a problem here. Although rows with the same value are assigned the same rank, the subsequent rank skips the missing rank.
This wouldn’t give us the desired results if we had to return “top N distinct” values from a table.
Therefore we have a different function to resolve this issue. */
SELECT *,
ROW_NUMBER() OVER(PARTITION BY JOB_ROLE ORDER BY SALARY DESC) AS ROW_NUM ,
RANK() OVER(PARTITION BY JOB_ROLE ORDER BY SALARY DESC) AS RANK_ROW
FROM EMPLOYEE;

/* The DENSE_RANK() function is similar to the RANK() except for one difference, it doesn’t skip any ranks when ranking rows
WINDOW FUNCTIONS PART 2
Here, all the ranks are distinct and sequentially increasing within each partition.
As compared to the RANK() function, it has not skipped any rank within a partition. */
SELECT * FROM
(
SELECT *,
ROW_NUMBER() OVER(PARTITION BY JOB_ROLE ORDER BY SALARY) AS ROW_NUM ,
RANK() OVER(PARTITION BY JOB_ROLE ORDER BY SALARY) AS RANK_ROW,
DENSE_RANK() OVER(PARTITION BY JOB_ROLE ORDER BY SALARY) AS DENSE_RANK_ROW
FROM EMPLOYEE
)
WHERE DENSE_RANK_ROW <=2;
SELECT *,
ROW_NUMBER() OVER(PARTITION BY JOB_ROLE ORDER BY SALARY) AS ROW_NUM ,
RANK() OVER(PARTITION BY JOB_ROLE ORDER BY SALARY) AS RANK_ROW,
DENSE_RANK() OVER(PARTITION BY JOB_ROLE ORDER BY SALARY) AS DENSE_RANK_ROW ,
NTH_VALUE(SALARY,2) OVER(PARTITION BY JOB_ROLE ORDER BY SALARY ) AS SECOND_HIGHEST_SAL_JOB_ROLE
FROM EMPLOYEE ;