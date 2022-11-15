-- Create a reservation for a customer who may or may not
-- already be listed in our Customers table.

-- Use the following information:
-- Sam McAdams (smac@kinetecoinc.com), for 5 people
-- on August 12, 2022 at 6PM (18:00)

INSERT INTO Customers (FirstName,LastName,Email)
VALUES ('Sam','McAdams','smac@kinetecoinc.com')

UPDATE Customers
SET phone = '(555) 555-1212'
where CustomerId = 102

select * from Customers
where lastname = 'McAdams'

INSERT INTO RESERVATIONS (CustomerId,Date,PartySize)
VALUES ('102','2022-08-12 18:00:00','5')

SELECT * FROM RESERVATIONS

SELECT Customers.FirstName,Customers.LastName,Customers.Email,Customers.Phone,Reservations.Date,Reservations.PartySize
FROM Customers
JOIN Reservations
ON Customers.CustomerID = Reservations.CustomerID
WHERE Customers.LastName = 'McAdams'