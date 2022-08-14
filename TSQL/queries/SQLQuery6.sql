SELECT Stock.StockItemName, Area.StateProvinceName, Orders.OrderDate
FROM (((Warehouse.StockItems AS Stock
INNER JOIN Application.StateProvinces AS Area
ON Stock.LastEditedBY = Area.LastEditedBy)
INNER JOIN Sales.OrderLines AS SOL
ON Stock.StockItemID = SOL.StockItemID)
INNER JOIN Sales.Orders AS Orders
ON SOL.OrderID = Orders.OrderID)
WHERE YEAR (Orders.OrderDate) != '2014' AND Area.StateProvinceName != ('ALABAMA''GEORGIA');