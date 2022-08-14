SELECT S.StockItemName, S.QuantityPerOuter
FROM Warehouse.StockItems S
INNER JOIN Purchasing.PurchaseOrders PO
ON S.SupplierID = PO.SupplierID
WHERE PO.OrderDate = '2013'