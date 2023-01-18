-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.



--Find customer
select *
from Customers 
where LastName = 'Hundey' and address = '6939 Elka Place'

--Create order recrod
INSERT INTO Orders (CustomerID, OrderDate) values 
('70', '2022-09-20 14:00:00')

select OrderID
from Orders
where CustomerID = 70 and orderDate = '2022-09-20 14:00:00'

select DishID
from Dishes
where Name in ('House Salad', 'Mini Cheeseburgers', 'Tropical Blue Smoothie')


--Add items order 
INSERT INTO OrdersDishes (OrderID, DishID) VALUES
(1001, 4), (1001, 7), (1001, 20)

select *
from OrdersDishes 
where OrderID = 1001

select sum(d.price)
from dishes d 
inner join OrdersDishes od on d.DishID = od.DishID
where od.OrderID = 1001