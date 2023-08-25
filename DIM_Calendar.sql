-- DIM_DateTable
select
	[DateKey],
	[FullDateAlternateKey] as Date, 
	[EnglishDayNameOfWeek] as Day,
	[WeekNumberOfYear] as WeekNr,
	[EnglishMonthName] as Month,
	left([EnglishMonthName], 3) as MonthShort,
	[MonthNumberOfYear] as MonthNo,
	[CalendarQuarter] as Quarter,
	[CalendarYear] as Year
	from [AdventureWorksDW2022].[dbo].[DimDate]
	where CalendarYear >= 2010