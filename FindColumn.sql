-- Find column in any table

SELECT COLUMN_NAME AS 'ColumnName'
,TABLE_NAME AS 'TableName'
FROM INFORMATION_SCHEMA.COLUMNS
WHERE COLUMN_NAME LIKE '%ColumnName%'
ORDER BY TableName
,ColumnName;
