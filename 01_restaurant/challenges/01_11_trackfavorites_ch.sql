-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

UPDATE Customers set FavoriteDish = (
SELECT dishID
from Dishes
where Name = 'Quinoa Salmon Salad')
where firstName = 'Cleo' and lastName = 'Goldwater'

select c.FirstName, c.LastName, d.name
from Customers c 
inner join dishes d on d.DishID = c.FavoriteDish
where firstName = 'Cleo' and lastName = 'Goldwater'