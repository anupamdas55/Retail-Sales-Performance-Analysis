-- show the how many rows in table 0r DataFrame
SELECT COUNT(*)FROM retail_sales_cleaned

-- SHOW ALL table 
SELECT * FROM retail_sales_cleaned

-- updated decimal values in discunt column len .00
UPDATE retail_sales_cleaned
SET "Discount" = (
    SELECT ROUND(AVG("Discount")::numeric, 2)
    FROM retail_sales_cleaned
);

-- updated decimal values in sales column len .00
UPDATE retail_sales_cleaned
SET "Sales"=(
SELECT ROUND(AVG("Sales")::numeric,2)
FROM retail_sales_cleaned
)

-- updated decimal values in profit column len .00
UPDATE retail_sales_cleaned
SET "Profit"=(
SELECT ROUND(AVG("Profit")::numeric,2)
FROM retail_sales_cleaned
)

-- Deleted unessary column
ALTER TABLE retail_sales_cleaned DROP COLUMN "Profit Margin"




