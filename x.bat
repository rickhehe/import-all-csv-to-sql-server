@ECHO OFF

SETLOCAL enabledelayedexpansion

SET CSVFOLDER=%cd%

SET SERVER=.\sqlexpress
SET DB=rickdev
SET TABLE=trialImportCsv

SET OUTPUT="outputLog.txt"
ECHO Last execution: %date% %time% > %OUTPUT%

::Recreate the table.
SQLCMD -S %SERVER% -i sql\createTable.sql

echo Yes PM
for %%f in (csv\*.csv) do (
    set F=%CSVFOLDER%\%%f
    echo !F!
    sqlcmd -S %SERVER% -i sql\x.sql
)
