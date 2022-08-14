SELECT DISTINCT C.CustomerName
FROM Sales.Customers C
INNER JOIN Application.People P
ON C.PrimaryContactPersonID = P.PersonID
WHERE C.PhoneNumber = P.PhoneNumber
