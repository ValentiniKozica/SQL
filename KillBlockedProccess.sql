-- Kill Blocked Proccess

 DECLARE@DatabaseName nvarchar(50)
Setthe Database Name

SET@DatabaseName = N'Datbase_Name'
--Selectthe current Daatbase

SET@DatabaseName = DB_NAME()

 

DECLARE@SQL varchar(max)

SET@SQL = ''

SELECT@SQL = @SQL + 'Kill ' + Convert(varchar, SPId) + ';'
FROMMASTER..SysProcesses
WHEREDBId = DB_ID(@DatabaseName) AND SPId <> @@SPId
andspid IN(SELECT blocked FROM master.dbo.sysprocesses)
 --You can see the kill Processes ID
--SELECT@SQL
--Kill the Processes
 
EXEC(@SQL)
