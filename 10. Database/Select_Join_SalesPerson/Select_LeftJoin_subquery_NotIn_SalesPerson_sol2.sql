# Write your MySQL query statement below
select name
from SalesPerson
where 
    SalesPerson.sales_id not in
    (
        select sales_id
        from Orders
        left join 
        Company 
        on 
            Orders.com_id = Company.com_id
        where Company.name = 'RED'
    )
