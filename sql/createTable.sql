use $(DB)
go

set nocount on
go

drop table if exists $(TABLE)
go

create table $(TABLE) (
    monthKey int
    , projectId int
)
go
