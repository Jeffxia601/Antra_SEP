SELECT StockItemName, DeliveryAddress, State, City, Country,
CustomerName, FullName, PhoneNumber, QuantityPerOuter
FROM Customer C
INNER JOIN PEOPLE P
ON C.CustomerID = P.PersonID
INNER JOIN Order O
ON C.CustomerID = O.CustomerID
INNER JOIN StockItems SI
ON C.OrderID = SI.OrderID
INNER JOIN StockItemTransaction SIT
ON SI.ItemID = SIT.ItemID
WHERE SIT.TransactionOccurWhen = '2014-07-01'