CREATE VIEW view_table
SELECT SIT.TransactionOccurredWhen AS year, 
SUM(SELECT COUNT(SIT.StockItemID) FROM Warehouse.StockItemTransactions SIT WHERE SIT.StockGroupID = 1) AS 'Stock Group Name1',
SUM(SELECT COUNT(SIT.StockItemID) FROM Warehouse.StockItemTransactions SIT WHERE SIT.StockGroupID = 2) AS 'Stock Group Name2',

SUM(SELECT COUNT(SIT.StockItemID) FROM Warehouse.StockItemTransactions SIT WHERE SIT.StockGroupID = 10) AS 'Stock Group Name10',
FROM Warehouse.StockItems SI
LEFT JOIN Warehouse.StockItemTransactions SIT
ON SI.StockItemID = SIT.StockItemID
WHERE SIT.TransactionOccurredWhen >= 2013-01-01
AND SIT.TransactionOccurredWhen <= 2017-12-31
GROUP BY SIT.StockGroupID
FOR XML PATH('ItemSale'), ROOT ('Warehouse.StockItemTransactions');