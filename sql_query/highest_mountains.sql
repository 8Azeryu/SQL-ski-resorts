SELECT 
	id
	,Resort 
	,`Highest slope` 
	,`Lowest point` 
FROM resorts r 
order by `Highest slope`  DESC 
limit 17
