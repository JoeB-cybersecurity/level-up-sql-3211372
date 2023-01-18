-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

--customer, orders

select c.firstName, c.lastName, c.email, count(o.OrderID) AMOUNT_ORDERS
from Customers c
inner join Orders o on o.CustomerID = c.CustomerID 
group by c.firstName, c.lastName, c.email
order by AMOUNT_ORDERS desc limit 15;