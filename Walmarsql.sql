select * from "Walmart"

--
select count(*) from "Walmart"

--
select distinct payment_method from "Walmart"

--
select distinct payment_method,count(*) from "Walmart"
group by payment_method

--Total no of stores
select count Ditinct Branch from "Walmart"

---
--Drop table Walmart




select * from "Walmart"
select max(quantity) from "Walmart"


---Buisness Problem

--q1] find diifirent payment method and number of tansction and quantity sold
select payment_method, count(*),sum(quantity) 
from "Walmart" 
group by payment_method

----q2]Identify the highest rated category
--AVG Rating
SELECT * 
FROM
(select branch,category,AVG(rating) as avg_rating,Rank()
over(partition by branch order by avg(rating) desc) as rank
from "Walmart"
group by 1,2
ORDER by 1,3 DESC
)
WHERE RANK=1


---q3]IDENTIFY THE BUSIEST DAY OF EACH RANK BASED ON THE NUMBER OF THE TRANACTION
SELECT*
FROM
(select 
  branch, 
  TO_CHAR(TO_DATE(date,'DD/MM/YY'),'Day') as day_name,count(*) as no_transactions,
  Rank() over(PARTITION BY branch Order by count(*) desc )as rank
from "Walmart"
group by 1,2
order by 1,3 DESC
)
WHERE RANK=1


---q4]total quantity of the items sold per payment method list_method and total_quantity


select payment_method,--count(*),
sum(quantity) as no_qty_sold
from "Walmart" 
group by payment_method


---q5]determine the avg min and max rating of each the category for eacgh city
--list the qty city,average_rating,min_rating,and max_rating
Select 
   city,category,min(rating) as min_rating,
   max(rating) as max_rating,
   AVg(rating) as avg_rating

from "Walmart"
group by 1,2




--q6]calculate the total profit for the each category by consider total_profit
--(unit price quantity profit margin)].list category and total_profit order 
---from highest o lowest profit


Select category,
sum(total) as total_revenue,
sum(total * profit_margin) as profit
from "Walmart"
group by category 


---q7}determine the most common method fro the each branch and prefer method
with cte
as 

(Select 
branch,
payment_method,
count(*) as total_trans,
Rank() over(Partition BY branch order by count(*) DESC) as rank
from "Walmart"
group by 1,2
)
select* from cte
where rank=1


---categorize the sales in the 3 group morning afternoon and eveningq8]
---find out which shift and the num=ber of the invice



select 
branch,

CASE 
     when extract(HOUR from(time::time))< 12 then 'Morning'
     when extract(HOUR from(time::time)) between 12 and 17 then 'Afternoon'
     else 'evening'
End day_time,
count(*)




from "Walmart"
group by 1,2
order by 1,3 desc



----q9]identify the 5 branch with the highest decrease ratio in
--- revenue compare to last year(current year 2023 and last_year 2022)
---revenue == last_year-current_year/ls_rev+100

select branch,sum(total) as revenue
from "Walmart"
group by 1

































