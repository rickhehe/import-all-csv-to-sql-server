# Import All CSV To A Table in SQL Server

Not sure if it works on other RDBMS, I tested it in SQL Server 2022 Express.

x.bat will recreate a table in selected database. Then loop all CSV files in the csv folder and import all lines to the table i.e. trialImportCsv.

In Azure SQL Database, you will need to import CSV from Blob storage.

To run it from PowerShell, use
```
cmd.exe -/c x.bat
```
