select pr.sub_category,pr.product_id, pr.product_name,
sum(tr.sales) as total_sales, sum(tr.profit) as total_profits, 
round((sum(tr.profit)/sum(tr.sales))*100,2) as profit_margin
from products as pr
join transactions as tr
on pr.product_id=tr.product_id
where pr.sub_category ='Tables'
group by pr.sub_category, pr.product_id, pr.product_name
having sum(tr.profit) < 0
order by total_profits
limit 10;