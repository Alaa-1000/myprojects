-- Show All Dataset
SELECT *
FROM bike_sales.data_tables ;
-- Data Cleaning
-- check data describe for data type 
Describe data_tables ;
-- / Modify the Data Type of the Income Column 
ALTER TABLE bike_sales.data_tables MODIFY Income INT
-- Data Exploration 
-- 1/ num of purchases of each occupation 
SELECT Occupation , COUNT(purchased_bike) as num_of_purchases 
FROM data_tables 
where purchased_bike = 'Yes'
group by Occupation ;
-- 2/relationship between Miles and Number of purchases 
SELECT Commute_Distance , COUNT(purchased_Bike) as num_of_purchases
from data_tables
WHERE purchased_Bike = 'yes'
group by Commute_Distance ;
-- 3/number of purchases per Region 
SELECT Region , COUNT(purchased_Bike) as num_of_purchases
FROM data_tables 
WHERE purchased_Bike = 'yes'
group by Region ;
-- 4/number of purchases per Gender 
SELECT Gender , Count(purchased_Bike) as num_of_purchases
FROM data_tables
WHERE purchased_Bike = 'yes'
group by Gender ;

