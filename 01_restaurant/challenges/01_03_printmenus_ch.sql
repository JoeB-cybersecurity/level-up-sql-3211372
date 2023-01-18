-- Create reports that will be used to make three menus.

-- Create a report with all the items sorted by price (lowest to highest).
-- Create a report showing appetizers and beverages.
-- Create a report with all items except beverages.

SELECT name, price
from dishes
order by price ASC; 

select name, Price, type 
from Dishes
where type = 'Appetizer' or Type = 'Beverage'
order by type;  

select name, price, Type
from Dishes
where type != 'Beverage'
order by type; 
