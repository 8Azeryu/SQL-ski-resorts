with
total_slopes AS 
(SELECT  
	resort
	,`Beginner slopes` + `Intermediate slopes` + `Difficult slopes`  	as total_slopes
FROM resorts r),
total_beginner AS 
(SELECT  
	resort
	,`Beginner slopes` + `Intermediate slopes` 						  	as total_beginner
FROM resorts r),
total_expert AS 
(SELECT  
	resort
	,`Intermediate slopes` + `Difficult slopes`  						as total_expert
	FROM resorts r),
aggregated as
(select
	ts.resort
	,ts.total_slopes
	,tb.total_beginner
	,te.total_expert
from total_slopes 	ts
join total_beginner tb 	on ts.resort = tb.resort
join total_expert 	te	on tb.resort = te.resort
)
SELECT 
	a.resort 
	,ROUND(a.total_beginner/  a.total_slopes    *100, 2)		as 	recommended_for_beginne_prc
	,ROUND(a.total_expert   / a.total_slopes 	*100, 2)		as	recommended_for_expert_prc
FROM aggregated a