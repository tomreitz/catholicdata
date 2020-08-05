SELECT Statistic, Count, Percent FROM (
	SELECT
		1 AS Sort,
		"Total regions" AS Statistic,
		(SELECT COUNT(*) FROM regions) AS Count,
		ROUND(100.0*(SELECT COUNT(*) FROM regions)/(SELECT COUNT(*) FROM regions),2) || "%" AS Percent
	UNION
	SELECT
		2 AS Sort,
		"US regions" AS Statistic,
		(SELECT COUNT(*) FROM regions WHERE location_country='United States') AS Count,
		ROUND(100.0*(SELECT COUNT(*) FROM regions WHERE location_country='United States')/(SELECT COUNT(*) FROM regions),2) || "%" AS Percent
	UNION
	SELECT
		3 AS Sort,
		"Regions with contact_website" AS Statistic,
		(SELECT COUNT(*) FROM regions WHERE contact_website IS NOT NULL) AS Count,
		ROUND(100.0*(SELECT COUNT(*) FROM regions WHERE contact_website IS NOT NULL)/(SELECT COUNT(*) FROM regions),2) || "%" AS Percent
	UNION
	SELECT
		4 AS Sort,
		"Regions with contact_address" AS Statistic,
		(SELECT COUNT(*) FROM regions WHERE contact_address IS NOT NULL) AS Count,
		ROUND(100.0*(SELECT COUNT(*) FROM regions WHERE contact_address IS NOT NULL)/(SELECT COUNT(*) FROM regions),2) || "%" AS Percent
	UNION
	SELECT
		5 AS Sort,
		"Regions with contact_email" AS Statistic,
		(SELECT COUNT(*) FROM regions WHERE contact_email IS NOT NULL) AS Count,
		ROUND(100.0*(SELECT COUNT(*) FROM regions WHERE contact_email IS NOT NULL)/(SELECT COUNT(*) FROM regions),2) || "%" AS Percent
	UNION
	SELECT
		6 AS Sort,
		"Regions with contact_phone" AS Statistic,
		(SELECT COUNT(*) FROM regions WHERE contact_phone IS NOT NULL) AS Count,
		ROUND(100.0*(SELECT COUNT(*) FROM regions WHERE contact_phone IS NOT NULL)/(SELECT COUNT(*) FROM regions),2) || "%" AS Percent
	UNION
	SELECT
		7 AS Sort,
		"Regions with contact_fax" AS Statistic,
		(SELECT COUNT(*) FROM regions WHERE contact_fax IS NOT NULL) AS Count,
		ROUND(100.0*(SELECT COUNT(*) FROM regions WHERE contact_fax IS NOT NULL)/(SELECT COUNT(*) FROM regions),2) || "%" AS Percent
	UNION
	SELECT
		8 AS Sort,
		"Regions with wikipedia" AS Statistic,
		(SELECT COUNT(*) FROM regions WHERE wikipedia IS NOT NULL) AS Count,
		ROUND(100.0*(SELECT COUNT(*) FROM regions WHERE wikipedia IS NOT NULL)/(SELECT COUNT(*) FROM regions),2) || "%" AS Percent
	UNION
	SELECT
		9 AS Sort,
		"Regions with social_facebook" AS Statistic,
		(SELECT COUNT(*) FROM regions WHERE social_facebook IS NOT NULL) AS Count,
		ROUND(100.0*(SELECT COUNT(*) FROM regions WHERE social_facebook IS NOT NULL)/(SELECT COUNT(*) FROM regions),2) || "%" AS Percent
	UNION
	SELECT
		10 AS Sort,
		"Regions with social_twitter" AS Statistic,
		(SELECT COUNT(*) FROM regions WHERE social_twitter IS NOT NULL) AS Count,
		ROUND(100.0*(SELECT COUNT(*) FROM regions WHERE social_twitter IS NOT NULL)/(SELECT COUNT(*) FROM regions),2) || "%" AS Percent
	UNION
	SELECT
		11 AS Sort,
		"Regions with social_instagram" AS Statistic,
		(SELECT COUNT(*) FROM regions WHERE social_instagram IS NOT NULL) AS Count,
		ROUND(100.0*(SELECT COUNT(*) FROM regions WHERE social_instagram IS NOT NULL)/(SELECT COUNT(*) FROM regions),2) || "%" AS Percent
	UNION
	SELECT
		12 AS Sort,
		"Regions with social_youtube" AS Statistic,
		(SELECT COUNT(*) FROM regions WHERE social_youtube IS NOT NULL) AS Count,
		ROUND(100.0*(SELECT COUNT(*) FROM regions WHERE social_youtube IS NOT NULL)/(SELECT COUNT(*) FROM regions),2) || "%" AS Percent
	UNION
	SELECT
		13 AS Sort,
		"- - - - - - - - - -" AS Statistic,
		"-" AS Count,
		"-" AS Percent
	UNION
	SELECT
		14 AS Sort,
		"Total people" AS Statistic,
		(SELECT COUNT(*) FROM people) AS Count,
		ROUND(100.0*(SELECT COUNT(*) FROM people)/(SELECT COUNT(*) FROM people),2) || "%" AS Percent
	UNION
	SELECT
		15 AS Sort,
		"Living people" AS Statistic,
		(SELECT COUNT(*) FROM people WHERE deceased=0) AS Count,
		ROUND(100.0*(SELECT COUNT(*) FROM people WHERE deceased=0)/(SELECT COUNT(*) FROM people),2) || "%" AS Percent
	UNION
	SELECT
		16 AS Sort,
		"Deceased people" AS Statistic,
		(SELECT COUNT(*) FROM people WHERE deceased=1) AS Count,
		ROUND(100.0*(SELECT COUNT(*) FROM people WHERE deceased=1)/(SELECT COUNT(*) FROM people),2) || "%" AS Percent
	UNION
	SELECT
		17 AS Sort,
		"People with contact_website" AS Statistic,
		(SELECT COUNT(*) FROM people WHERE contact_website IS NOT NULL) AS Count,
		ROUND(100.0*(SELECT COUNT(*) FROM people WHERE contact_website IS NOT NULL)/(SELECT COUNT(*) FROM people),2) || "%" AS Percent
	UNION
	SELECT
		18 AS Sort,
		"People with contact_email" AS Statistic,
		(SELECT COUNT(*) FROM people WHERE contact_email IS NOT NULL) AS Count,
		ROUND(100.0*(SELECT COUNT(*) FROM people WHERE contact_email IS NOT NULL)/(SELECT COUNT(*) FROM people),2) || "%" AS Percent
	UNION
	SELECT
		19 AS Sort,
		"People with wikipedia" AS Statistic,
		(SELECT COUNT(*) FROM people WHERE wikipedia IS NOT NULL) AS Count,
		ROUND(100.0*(SELECT COUNT(*) FROM people WHERE wikipedia IS NOT NULL)/(SELECT COUNT(*) FROM people),2) || "%" AS Percent
	UNION
	SELECT
		20 AS Sort,
		"People with social_facebook" AS Statistic,
		(SELECT COUNT(*) FROM people WHERE social_facebook IS NOT NULL) AS Count,
		ROUND(100.0*(SELECT COUNT(*) FROM people WHERE social_facebook IS NOT NULL)/(SELECT COUNT(*) FROM people),2) || "%" AS Percent
	UNION
	SELECT
		21 AS Sort,
		"People with social_twitter" AS Statistic,
		(SELECT COUNT(*) FROM people WHERE social_twitter IS NOT NULL) AS Count,
		ROUND(100.0*(SELECT COUNT(*) FROM people WHERE social_twitter IS NOT NULL)/(SELECT COUNT(*) FROM people),2) || "%" AS Percent
	UNION
	SELECT
		22 AS Sort,
		"People with social_instagram" AS Statistic,
		(SELECT COUNT(*) FROM people WHERE social_instagram IS NOT NULL) AS Count,
		ROUND(100.0*(SELECT COUNT(*) FROM people WHERE social_instagram IS NOT NULL)/(SELECT COUNT(*) FROM people),2) || "%" AS Percent
	UNION
	SELECT
		23 AS Sort,
		"People with social_youtube" AS Statistic,
		(SELECT COUNT(*) FROM people WHERE social_youtube IS NOT NULL) AS Count,
		ROUND(100.0*(SELECT COUNT(*) FROM people WHERE social_youtube IS NOT NULL)/(SELECT COUNT(*) FROM people),2) || "%" AS Percent
	UNION
	SELECT
		24 AS Sort,
		"- - - - - - - - - -" AS Statistic,
		"-" AS Count,
		"-" AS Percent
) ORDER BY Sort;
