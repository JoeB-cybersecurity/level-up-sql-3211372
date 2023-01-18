-- Update a customer's contact information.

-- Taylor Jenkins, of 27170 6th Ave., Washington, DC,
-- has moved to 74 Pine St., New York, NY.

UPDATE Customers set address = '74 Pine St.', 
city = 'New York', state = 'NY' 
where customerID = 26

select *
from Customers
where CustomerID = 26