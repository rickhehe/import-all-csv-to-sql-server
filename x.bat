@ECHO OFF

SETLOCAL ENABLEDELAYEDEXPANSION

SET CSVFOLDER="%cd%\csv"  ::PWD

SET SERVER=.\sqlexpress
SET DB=rickdev
SET TABLE=trialImportCsv

SET OUTPUT="outputLog.txt"
ECHO Last execution: %date% %time% > %OUTPUT%

::Recreate the table.
SQLCMD -S %SERVER% -i sql\createTable.sql

for %%f in (%CSVFOLDER%\*.csv) do (
    set F=%%f
    echo !F!
    sqlcmd -S %SERVER% -i sql\x.sql
)
