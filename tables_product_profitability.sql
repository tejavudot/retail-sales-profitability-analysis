select pr.product_id,pr.product_name, pr.category, pr.sub_category,
sum(tr.sales) as total_sales, sum(tr.profit) as total_profits
from products as pr
join transactions as tr
on pr.product_id=tr.product_id
where pr.sub_category='Tables'
group by pr.product_id,pr.product_name, pr.category, pr.sub_category
order by total_profits;


