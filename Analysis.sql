use zepto;

select * from zepto;

select Category, name, mrp from zepto;

select name from zepto where Category="Fruits & Vegetables";

select * from zepto where mrp >= 3000;

select * from zepto where outOfStock="True";

select * from zepto where outOfStock ="False" and discountPercent > 15;

select * from zepto where weightInGms  between 100 and 500;

select name from zepto where availableQuantity < 5;

select name from zepto where name like "T%";

select name from zepto where discountPercent = 0;

select * from zepto order by mrp desc;

select * from zepto order by mrp desc limit 5;

select * from zepto order by discountPercent desc;

select * from zepto order by mrp limit 1;

select * from zepto order by discountPercent desc limit 3;

select * from zepto order by Category, mrp desc;

select count(*) as Total_Products from zepto;

select avg(mrp) as Average_mrp from zepto;

select max(mrp) as Maximum_mrp,min(mrp) as Minimum_mrp from zepto;

select count(*) as Out_Of_Stock_Products from zepto where outOfStock = "True";

select sum(availableQuantity) from zepto;

select avg(discountPercent) as Average_discountPrice from zepto;

select sum(availableQuantity * discountedSellingPrice) as Total_inventory_value from zepto;

select Category, count(*) as Total_Products from zepto group by Category;

select Category, round(avg(mrp),2) as Average_mrp from zepto group by Category;

select Category, sum(availableQuantity) as Total_AvailableQuantity from zepto group by Category order by Total_AvailableQuantity;

select Category, round(avg(discountPercent),1) as Average_discount from zepto group by Category order by Average_discount desc;

Select Category, count(distinct name) as Products from zepto group by Category having Products > 5 order by Products;

Select Category, round(avg(mrp),2) as Average_mrp from zepto group by Category order by Average_mrp desc limit 1;

select Category, count(outOfStock) as OutOfStock from zepto where outOfStock="True" group by Category having OutOfStock >= 1;

Select *,
Case
when outOfStock = "True" Then "Out Of Stock"
when availableQuantity < 5 then "Limited Stock"
else "Available"
end as Stock_status
from zepto;

select *,
Case
when discountPercent > 20 then "Bumper Discount"
when discountPercent between 10 and 20 then "High Discount"
else "Low Discount"
end as "Discount"
from zepto;

select distinct name as Products from zepto where mrp > (select avg(mrp) from zepto);

select * from zepto where discountPercent = (select max(discountPercent)  from zepto);

select * from zepto where discountedSellingPrice > (select avg(discountedSellingPrice) from zepto);

select Category,count(*) as Total from zepto group by Category order by Total desc limit 2;
