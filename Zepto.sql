Drop table if exists Zepto;
create table zepto(
sku_id SERIAL PRIMARY KEY,
category Varchar(120),
name varchar(150) Not null,
mrp numeric(8,2),
discountPercent Numeric(5,2),
availableQuantity integer,
discountsellingPrice Numeric(8,2),
weightInGms INTEGER,
outofstock BOOLEAN,
quantity INTEGER
);
select * from zepto;

--data Exploration

--count of rows
select count(*) from zepto;

--simple dara 
select * from zepto
limit 10

--Null Values
select * from Zepto
where  Name Is null
or
category is null
or
mrp is null
or
discountPercent is null
or
discountsellingprice is null
or
weightinGms is Null
or
availableQuantity Is null
or
outofstock is null
or
quantity is null;

--differnet product Category
select Distinct category
from Zepto
order by Category;

--product in stock Vs Out of stock
Select outofstock, count(sku_id)
from zepto
Group by outofstock;

--product name present multiple times
SELECT Name, count(sku_id) AS "Number of skus"
from zepto
group by name
having count(sku_id)>1
order by count(sku_id)desc;

--data cleaning

--product with price = 0
select * from zepto
where mrp = 0 OR zepto.discountsellingprice = 0;

delete from zepto
where mrp = 0;
 
select * from zepto


--convert paise into Rupees

update zepto 
set mrp = mrp / 100.0,
discountedSellingPrice = discountedSellingPrice / 100.0;
select mrp, dicountedSellingPrice From zepto;

--data analysis
--Q1 find the top 10 best-value product based on the discount

select distinct name, mrp, discountPercent
from zepto
order by discountPercent Desc
limit 10;

--Q2.what are the product with High MRP but Out of stock

select Distinct Name,mrp
from zepto
Where outofstock = true and mrp > 300
order by mrp DESC;

--Q3.Calculate the estimated Revanue of each category

Select category,
sum(discountSellingPrice * availableQuantity) AS total_revenue
from zepto
GROUP BY category
order by total_revenue;

--Q4. find all product where MRP is greater than ₹500 and discount is less than 10%
select distinct name,mrp,discountPercent
from zepto
where mrp > 500 and discountPercent < 10
order by mrp DESC,discountPercent DESC;

--Q5.Identify the top 5 category offering the highest average discount percentage
select category,
Round(avg(discountpercent),2) As avg_discount
from zepto
group by category
order by avg_discount Desc
limit 5;

--Q6.find the price of per gram of the product above 100g and sort by best value
SELECT Distinct name, weightinGms, discountedSellingPrice,
round(discountedSellingPrice/weightInGms,2) AS price_per_gram
from zepto
where weightInGms >= 100
order by price_per_gram;

select * from zepto



--Q7 group the product into categories like  low, medium, Bluck
select Distinct name, weightinGms,
case when weightInGms < 1000 then 'low'
     when weightInGms < 5000 Then 'medium'
	 else 'Bulk'
	 End As weight_category
FROM zepto;

--Q8.What is the Total Inventory Weight Per Category 
SELECT category,
SUM(weightInGms * availableQuantity) AS total_weight
FROM zepto
GROUP BY category
ORDER BY total_weight;


