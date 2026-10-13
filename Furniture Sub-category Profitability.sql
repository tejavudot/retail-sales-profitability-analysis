select pr.category,pr.sub_category,
sum(tr.sales) as total_sales, sum(tr.profit) as total_profits, 
round((sum(tr.profit)/sum(tr.sales))*100,2) as profit_margin
from products as pr
join transactions as tr
on pr.product_id=tr.product_id
where pr.category ='Furniture'
group by pr.category,pr.sub_category
order by total_profits