-- DIM_InternetSales Table
select
	[ProductKey],
	[OrderDateKey],
	[DueDateKey],
	[ShipDateKey],
	[CustomerKey],
	[SalesOrderNumber],
	[SalesAmount]
from [dbo].[FactInternetSales]
where left (OrderDateKey, 4) >= YEAR(GETDATE()) - 13
order by OrderDateKey asc
