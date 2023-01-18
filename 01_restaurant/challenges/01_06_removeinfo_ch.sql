-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.

select *
from Customers c
inner join Reservations r on r.CustomerID = c.CustomerID 
where c.firstName LIKE 'Norby' and date > '2022-01-01' --should be current date

delete from Reservations where ReservationID = '2000'