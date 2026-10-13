select round(sum(tr.sales),2) as total_sales, round(sum(tr.profit),2) as total_profits, 
round((sum(tr.profit)/sum(tr.sales))*100,2) as profit_margin
from  transactions as tr
