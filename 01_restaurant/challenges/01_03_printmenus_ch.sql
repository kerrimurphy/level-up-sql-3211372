-- Create reports that will be used to make three menus.

-- Create a report with all the items sorted by price (lowest to highest).
SELECT Name, Description, Price
FROM dishes
ORDER BY price
-- Create a report showing appetizers and beverages.
SELECT Name, Description, Price, Type
FROM Dishes
WHERE type = 'Appetizer' OR type = 'Beverage'
ORDER BY type
-- Create a report with all items except beverages.
SELECT Name, Description, Price, Type
FROM Dishes
Where type != 'Beverage'
ORDER BY type