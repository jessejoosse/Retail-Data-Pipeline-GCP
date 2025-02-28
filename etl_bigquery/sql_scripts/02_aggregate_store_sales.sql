--set @@dataset_project_id = 'quiet-branch-452017-t5';
--set @@dataset_id = 'adventureworks_sales';
create or replace table adventureworks_sales.store_sales_summary as
select s.BusinessEntityID StoreID, round(sum(sd.LineTotal), 2) as TotalSales
from adventureworks_sales.sales_order_detail sd
inner join adventureworks_sales.sales_order_header sh on sd.SalesOrderID = sh.SalesOrderID
inner join adventureworks_sales.customer c on sh.CustomerID = c.CustomerID
inner join adventureworks_sales.store s on c.StoreID = s.BusinessEntityID
group by s.BusinessEntityID 
order by TotalSales desc;