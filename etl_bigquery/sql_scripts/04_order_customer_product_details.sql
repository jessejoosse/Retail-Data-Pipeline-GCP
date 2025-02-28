/* This query gives you order-level detail, including customer name, store name, and product info. */

select
    h.SalesOrderID,
    h.OrderDate,
    h.TotalDue,
    c.CustomerID,
    p.FirstName,
    p.LastName,
    s.Name AS StoreName,
    d.ProductID,
    pr.Name AS ProductName,
    d.OrderQty,
    d.LineTotal
from adventureworks_sales.sales_order_header h
inner join adventureworks_sales.customer c on h.CustomerID = c.CustomerID
inner join adventureworks_sales.person p on c.PersonID = p.BusinessEntityID
inner join adventureworks_sales.store s on c.StoreID = s.BusinessEntityID
inner join adventureworks_sales.sales_order_detail d on h.SalesOrderID = d.SalesOrderID
inner join adventureworks_sales.product pr on d.ProductID = pr.ProductID