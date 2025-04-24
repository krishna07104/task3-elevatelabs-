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
-- total sales according to country

select `city`, sum(sales) as totalsales
from samplestore
group by `city`
order by totalsales desc
-- selecting top 3 countries in top sales

limit 3;
-- sales according to category and sub category

select Category, `Sub-Category`, SUM(Sales) as TotalSales
from samplestore
group by Category, `Sub-Category`
order by TotalSales desc
-- selecting top 3 sales
limit 3;

-- total sales

select sum(sales) as totalsales from samplestore;

-- creaing a view on sales according to city

CREATE VIEW citysales AS
SELECT `city`,`sales` 
FROM samplestore;
select * from citysales;

