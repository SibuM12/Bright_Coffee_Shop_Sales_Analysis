--1. To check the data type in my data
SELECT * 
FROM `workspace`.`default`.`bright_coffee_shop`
LIMIT 100;


--2. To check the date range from 1st to the last day
SELECT MIN(transaction_date) as Minimum_Date,
       MAX(transaction_date) as Maximum_Date
FROM `workspace`.`default`.`bright_coffee_shop`;


--3. To check different store locations
SELECT DISTINCT store_location
FROM `workspace`.`default`.`bright_coffee_shop`;


--4. To check product category from different stores 
SELECT DISTINCT product_category
FROM `workspace`.`default`.`bright_coffee_shop`;


--5. To check product types from different stores 
SELECT DISTINCT product_type
FROM `workspace`.`default`.`bright_coffee_shop`;


--6. To check product details that are sold at each store 
SELECT DISTINCT product_detail
FROM `workspace`.`default`.`bright_coffee_shop`;


--7. To check out NULL values 
SELECT *
FROM `workspace`.`default`.`bright_coffee_shop`
WHERE unit_price is null 
OR transaction_qty is null 
OR transaction_date is null;

  
--8. To check the MIN and MAX unit price 
SELECT MIN(unit_price) as Lowest_unit_price,
       MAX(unit_price) as Highest_unit_price
       FROM `workspace`.`default`.`bright_coffee_shop`;


--9. To extract day and month names 
SELECT transaction_date,
      DAYNAME(transaction_date) as Day_name,
      MONTHNAME(transaction_date) as Month_name
FROM `workspace`.`default`.`bright_coffee_shop`;


-- 10. To calculate the revenue 
SELECT unit_price,
       transaction_qty,
       unit_price * transaction_qty as Revenue
FROM `workspace`.`default`.`bright_coffee_shop`;

    
--11. To cmbine functions in order to get clean data 
SELECT transaction_id,
       transaction_date,
       transaction_time,
       transaction_qty, 
       store_id,
       store_location,
       product_id,
       unit_price,
       product_category,
       product_type,
       product_detail,
--Adding columns to enhance the table for better insights 
--- New column added 1      
       DAYNAME(transaction_date) as Day_name,
---New column added 2       
       MONTHNAME(transaction_date) as Month_name,
--- New column added 3 
       DAYOFMONTH(transaction_date) as Date_of_Month,
--- New Column added 4 ( Determinig weekenday / weekend)
 CASE 
     WHEN Dayname(transaction_date) in ('Sun', 'Sat') then 'Weekend'
     ELSE 'Weekday' 
 End as Day_classification,   
--- New column added 5 ( Determining Time Buckets)
CASE 
     WHEN HOUR(transaction_time) BETWEEN 5 AND 8 THEN 'Busy Hour'
     WHEN HOUR(transaction_time) BETWEEN 9 AND 11 THEN 'Mid morning'
     WHEN HOUR(transaction_time) BETWEEN 12 AND 15 THEN 'Afternoon'
     WHEN HOUR(transaction_time) BETWEEN 16 AND 18 THEN 'Last Rush'
     ELSE 'Night'
 END AS Time_classification,
 --- New Column added 6 (Spend Buckets)
 CASE 
     WHEN (transaction_qty*unit_price) <=50 then 'Low spender'
     WHEN (transaction_qty*unit_price) between 51 and 200 then 'Medium spender'
     WHEN (transaction_qty*unit_price) between 201 and 300 then 'High spender'
     ELSE 'Premium Spender'
 END AS Spend_bucket,
--- New column added 7 ( Revenue)
 transaction_qty*unit_price as Revenue
FROM `workspace`.`default`.`bright_coffee_shop`;
