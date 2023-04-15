use $(DB)
go

bulk insert
    $(TABLE)
from
    "$(F)"
WITH (
    FORMAT = 'CSV'
    , FIRSTROW = 2
    , FIELDQUOTE = '\'
)
go
