-- Update table using values from another table in SQL Server

UPDATE T1
SET column1 = T2.column1, column2 = T2.column2
FROM #Table1 T1       
JOIN #Table2 T2 ON
T1.ID = T2.ID
