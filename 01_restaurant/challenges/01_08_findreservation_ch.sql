-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.

select *
from Reservations r 
inner join Customers c on r.CustomerID = c.CustomerID -- or st%
where (LastName LIKE 'Stevens_n' OR lastName LIKE 'Stephens_n' OR
lastName LIKE 'Stuyvesant') and PartySize = 4 and date LIKE '2022-06-14%'