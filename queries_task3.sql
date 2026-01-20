use task3_sql;

CREATE TABLE  superstore (
Order_ID VARCHAR(20),
Order_Date DATE,
Category VARCHAR(50),
Region VARCHAR(50),
Sales DECIMAL(10,2),
Profit DECIMAL(10,2),
CustomerName VARCHAR(100)
);
select * from superstore;

select  * from superstore LIMIT 5;

Select COUNT(*) AS total_records from superstore;

select  *
from superstore
where  Category = 'Technology'
order by  Sales DESC;

SELECT Category,
SUM(Sales) AS Total_Sales,
AVG(Profit) AS Avg_Profit,
COUNT(*) AS Order_Count
FROM superstore
GROUP BY Category;

SELECT Region, SUM(Profit) AS Region_Profit
FROM superstore
GROUP BY Region;

SELECT Category, SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Category
HAVING SUM(Sales) > 100000;

SELECT *
FROM superstore
WHERE Customer_name LIKE 'Patel';

SELECT *
FROM superstore
WHERE Order_Date BETWEEN '2023-01-01' AND '2023-01-31';

SELECT Category, SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY Category
INTO OUTFILE 'C:/Program Files/MySQL/MySQL Server 8.0/uploads/task3_output.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';

SELECT Category, SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY Category
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/task3_output.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';


