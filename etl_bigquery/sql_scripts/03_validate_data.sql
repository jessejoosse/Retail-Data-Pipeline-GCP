-- Check for duplicate records in the sales_order_header table.
select SalesOrderID, COUNT(*)
from adventureworks_sales.sales_order_header
group by SalesOrderID
having count(*) > 1;

-- Check for duplicate records in the sales_order_detail table.
select SalesOrderDetailID, count(*)
from adventureworks_sales.sales_order_detail
group by SalesOrderDetailID
having count(*) > 1;

-- Count SalesOrderDetail rows per SalesOrderID.
select SalesOrderID, count(*) CountOfRows
from adventureworks_sales.sales_order_detail
group by SalesOrderID
having count(*) > 1
order by CountOfRows desc;

-- Verify store-wise sales trends.
select StoreID, avg(TotalSales) as AvgSales
from adventureworks_sales.store_sales_summary
group by StoreID
order by AvgSales desc;