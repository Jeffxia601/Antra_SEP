SELECT DISTINCT P.FullName
FROM Application.People P
INNER JOIN 
(SELECT O.CustomerID 
FROM Sales.Orders O
WHERE O.OrderDate < '2016-01-01'
GROUP BY O.CustomerID
HAVING COUNT(OrderDate)>0) AS C
ON P.PersonID = C.CustomerID