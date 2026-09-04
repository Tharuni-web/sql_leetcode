# Write your MySQL query statement below
select p.product_id,round(IFNULL(sum(units*price)/sum(units),0),2) average_price 
from Prices p LEFT JOIN UnitsSold us
ON p.product_id = us.product_id and purchase_date between start_date and end_date
group by p.product_id;

