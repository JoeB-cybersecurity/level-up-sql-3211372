-- Register a customer for our Anniversary event.

-- The customer 'atapley2j@kinetecoinc.com' will be in
-- attendance, and will bring 3 friends.

INSERT INTO Customer_response(CustomerID, NoPeople) VALUES
((select CustomerID
  from Customers 
  where email = 'atapley2j@kinetecoinc.com'), 3)

