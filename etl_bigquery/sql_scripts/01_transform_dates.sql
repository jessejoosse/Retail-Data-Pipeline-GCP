ALTER TABLE adventureworks_sales.sales_order_header
RENAME COLUMN OrderDate TO TempOrderDate;

ALTER TABLE adventureworks_sales.sales_order_header
ADD COLUMN OrderDate DATE;

UPDATE adventureworks_sales.sales_order_header
SET OrderDate = DATE(TempOrderDate)
WHERE TRUE;

ALTER TABLE adventureworks_sales.sales_order_header
DROP COLUMN TempOrderDate;

ALTER TABLE adventureworks_sales.sales_order_header
RENAME COLUMN DueDate TO TempDueDate;

ALTER TABLE adventureworks_sales.sales_order_header
ADD COLUMN DueDate DATE;

UPDATE adventureworks_sales.sales_order_header
SET DueDate = DATE(TempDueDate)
WHERE TRUE;

ALTER TABLE adventureworks_sales.sales_order_header
DROP COLUMN TempDueDate;

ALTER TABLE adventureworks_sales.sales_order_header
RENAME COLUMN ShipDate TO TempShipDate;

ALTER TABLE adventureworks_sales.sales_order_header
ADD COLUMN ShipDate DATE;

UPDATE adventureworks_sales.sales_order_header
SET ShipDate = DATE(TempShipDate)
WHERE TRUE;

ALTER TABLE adventureworks_sales.sales_order_header
DROP COLUMN TempShipDate;

ALTER TABLE adventureworks_sales.sales_order_header
RENAME COLUMN ModifiedDate TO TempModifiedDate;

ALTER TABLE adventureworks_sales.sales_order_header
ADD COLUMN ModifiedDate DATE;

UPDATE adventureworks_sales.sales_order_header
SET ModifiedDate = DATE(TempModifiedDate)
WHERE TRUE;

ALTER TABLE adventureworks_sales.sales_order_header
DROP COLUMN TempModifiedDate;