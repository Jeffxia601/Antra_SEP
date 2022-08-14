SELECT S.StockItemName
FROM Warehouse.StockItems S
WHERE len(S.SearchDetails)>10