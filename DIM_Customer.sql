-- DIM_Customers Table
select
	c.customerkey as CustomerKey,
	c.firstname as [First Name],
	c.lastname as [Last Name],
	c.firstname + ' ' + lastname as [Full Name],
	case c.gender when 'M' then 'Male' when 'F' then 'Female' end as Gender,
	c.datefirstpurchase as DateFirstPurchase,
	g.city as [Customer City]
	from [dbo].[dimcustomer] as c left join [dbo].[dimgeography] as g
		on g.geographykey = c.geographykey
	order by CustomerKey ASC