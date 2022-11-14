-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.

select * from customers
where lastname = 'Norby' or firstname = 'Norby'

select * from reservations
where customerid = 64

SELECT * FROM Reservations
INNER JOIN Customers
ON Reservations.CustomerId = Customers.CustomerId
WHERE Customers.FirstName = 'Norby'

DELETE FROM Reservations
where reservationid = 2000
