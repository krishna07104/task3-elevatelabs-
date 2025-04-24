-- create a database
create database task3;
-- using the database
use task3;
-- showing the columns from the table
select * from samplestore;

-- most popular shipping mode

select `Ship Mode`, COUNT(*) AS ordercount
from samplestore
group by `Ship Mode`
order by ordercount DESC;
![Screenshot 2025-04-24 190829](https://github.com/user-attachments/assets/ef81014a-73cd-4106-b8cf-05dac08ddc9a)

-- total sales according to country

select `city`, sum(sales) as totalsales
from samplestore
group by `city`
order by totalsales desc;
![Screenshot 2025-04-24 191500](https://github.com/user-attachments/assets/7cd14629-6614-4b9a-af75-8f8459c4d2a5)

-- selecting top 3 countries in top sales

limit 3;

![Screenshot 2025-04-24 192220](https://github.com/user-attachments/assets/2809dd7e-1fb1-4c21-8272-3f331ae35ff9)

-- sales according to category and sub category

select Category, `Sub-Category`, SUM(Sales) as TotalSales
from samplestore
group by Category, `Sub-Category`
order by TotalSales desc
-- selecting top 3 sales
limit 3;

![Screenshot 2025-04-24 192220](https://github.com/user-attachments/assets/ba4f8ec9-c008-438c-a125-f5463bd10a7c)


-- total sales

select sum(sales) as totalsales from samplestore;

![Screenshot 2025-04-24 192240](https://github.com/user-attachments/assets/8cbec45d-f0cc-4221-a4c7-cb21cb3e569a)


-- creaing a view on sales according to city

CREATE VIEW citysales AS
SELECT `city`,`sales` 
FROM samplestore;
select * from citysales;
