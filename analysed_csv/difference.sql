SELECT 
	id
	,Resort 
	,`Highest slope` - `Lowest point` 			as lowest_and_highest_points_difference
	FROM resorts r 
order by lowest_and_highest_points_difference DESC