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
		"Current regions" AS Statistic,
		(SELECT COUNT(*) FROM regions WHERE historical=0) AS Count,
		ROUND(100.0*(SELECT COUNT(*) FROM regions WHERE historical=0)/(SELECT COUNT(*) FROM regions),2) || "%" AS Percent
	UNION
	SELECT
		4 AS Sort,
		"Historical regions" AS Statistic,
		(SELECT COUNT(*) FROM regions WHERE historical=1) AS Count,
		ROUND(100.0*(SELECT COUNT(*) FROM regions WHERE historical=1)/(SELECT COUNT(*) FROM regions),2) || "%" AS Percent
	UNION
	SELECT
		5 AS Sort,
		"Regions with contact.website" AS Statistic,
		(SELECT COUNT(*) FROM regions WHERE contact_website IS NOT NULL) AS Count,
		ROUND(100.0*(SELECT COUNT(*) FROM regions WHERE contact_website IS NOT NULL)/(SELECT COUNT(*) FROM regions),2) || "%" AS Percent
	UNION
	SELECT
		6 AS Sort,
		"Regions with contact.address" AS Statistic,
		(SELECT COUNT(*) FROM regions WHERE contact_address IS NOT NULL) AS Count,
		ROUND(100.0*(SELECT COUNT(*) FROM regions WHERE contact_address IS NOT NULL)/(SELECT COUNT(*) FROM regions),2) || "%" AS Percent
	UNION
	SELECT
		7 AS Sort,
		"Regions with contact.email" AS Statistic,
		(SELECT COUNT(*) FROM regions WHERE contact_email IS NOT NULL) AS Count,
		ROUND(100.0*(SELECT COUNT(*) FROM regions WHERE contact_email IS NOT NULL)/(SELECT COUNT(*) FROM regions),2) || "%" AS Percent
	UNION
	SELECT
		8 AS Sort,
		"Regions with contact.phone" AS Statistic,
		(SELECT COUNT(*) FROM regions WHERE contact_phone IS NOT NULL) AS Count,
		ROUND(100.0*(SELECT COUNT(*) FROM regions WHERE contact_phone IS NOT NULL)/(SELECT COUNT(*) FROM regions),2) || "%" AS Percent
	UNION
	SELECT
		9 AS Sort,
		"Regions with contact.fax" AS Statistic,
		(SELECT COUNT(*) FROM regions WHERE contact_fax IS NOT NULL) AS Count,
		ROUND(100.0*(SELECT COUNT(*) FROM regions WHERE contact_fax IS NOT NULL)/(SELECT COUNT(*) FROM regions),2) || "%" AS Percent
	UNION
	SELECT
		10 AS Sort,
		"Regions with wikipedia" AS Statistic,
		(SELECT COUNT(*) FROM regions WHERE wikipedia IS NOT NULL) AS Count,
		ROUND(100.0*(SELECT COUNT(*) FROM regions WHERE wikipedia IS NOT NULL)/(SELECT COUNT(*) FROM regions),2) || "%" AS Percent
	UNION
	SELECT
		11 AS Sort,
		"Regions with social.facebook" AS Statistic,
		(SELECT COUNT(*) FROM regions WHERE social_facebook IS NOT NULL) AS Count,
		ROUND(100.0*(SELECT COUNT(*) FROM regions WHERE social_facebook IS NOT NULL)/(SELECT COUNT(*) FROM regions),2) || "%" AS Percent
	UNION
	SELECT
		12 AS Sort,
		"Regions with social.twitter" AS Statistic,
		(SELECT COUNT(*) FROM regions WHERE social_twitter IS NOT NULL) AS Count,
		ROUND(100.0*(SELECT COUNT(*) FROM regions WHERE social_twitter IS NOT NULL)/(SELECT COUNT(*) FROM regions),2) || "%" AS Percent
	UNION
	SELECT
		13 AS Sort,
		"Regions with social.instagram" AS Statistic,
		(SELECT COUNT(*) FROM regions WHERE social_instagram IS NOT NULL) AS Count,
		ROUND(100.0*(SELECT COUNT(*) FROM regions WHERE social_instagram IS NOT NULL)/(SELECT COUNT(*) FROM regions),2) || "%" AS Percent
	UNION
	SELECT
		14 AS Sort,
		"Regions with social.youtube" AS Statistic,
		(SELECT COUNT(*) FROM regions WHERE social_youtube IS NOT NULL) AS Count,
		ROUND(100.0*(SELECT COUNT(*) FROM regions WHERE social_youtube IS NOT NULL)/(SELECT COUNT(*) FROM regions),2) || "%" AS Percent
	UNION
	SELECT
		15 AS Sort,
		"- - - - - - - - - -" AS Statistic,
		"-" AS Count,
		"-" AS Percent
	UNION
	SELECT
		50 AS Sort,
		"Total people" AS Statistic,
		(SELECT COUNT(*) FROM people) AS Count,
		ROUND(100.0*(SELECT COUNT(*) FROM people)/(SELECT COUNT(*) FROM people),2) || "%" AS Percent
	UNION
	SELECT
		51 AS Sort,
		"Living people" AS Statistic,
		(SELECT COUNT(*) FROM people WHERE deceased=0) AS Count,
		ROUND(100.0*(SELECT COUNT(*) FROM people WHERE deceased=0)/(SELECT COUNT(*) FROM people),2) || "%" AS Percent
	UNION
	SELECT
		52 AS Sort,
		"Deceased people" AS Statistic,
		(SELECT COUNT(*) FROM people WHERE deceased=1) AS Count,
		ROUND(100.0*(SELECT COUNT(*) FROM people WHERE deceased=1)/(SELECT COUNT(*) FROM people),2) || "%" AS Percent
	UNION
	SELECT
		53 AS Sort,
		"People with contact.website" AS Statistic,
		(SELECT COUNT(*) FROM people WHERE contact_website IS NOT NULL) AS Count,
		ROUND(100.0*(SELECT COUNT(*) FROM people WHERE contact_website IS NOT NULL)/(SELECT COUNT(*) FROM people),2) || "%" AS Percent
	UNION
	SELECT
		54 AS Sort,
		"People with contact.email" AS Statistic,
		(SELECT COUNT(*) FROM people WHERE contact_email IS NOT NULL) AS Count,
		ROUND(100.0*(SELECT COUNT(*) FROM people WHERE contact_email IS NOT NULL)/(SELECT COUNT(*) FROM people),2) || "%" AS Percent
	UNION
	SELECT
		55 AS Sort,
		"People with wikipedia" AS Statistic,
		(SELECT COUNT(*) FROM people WHERE wikipedia IS NOT NULL) AS Count,
		ROUND(100.0*(SELECT COUNT(*) FROM people WHERE wikipedia IS NOT NULL)/(SELECT COUNT(*) FROM people),2) || "%" AS Percent
	UNION
	SELECT
		56 AS Sort,
		"People with social.facebook" AS Statistic,
		(SELECT COUNT(*) FROM people WHERE social_facebook IS NOT NULL) AS Count,
		ROUND(100.0*(SELECT COUNT(*) FROM people WHERE social_facebook IS NOT NULL)/(SELECT COUNT(*) FROM people),2) || "%" AS Percent
	UNION
	SELECT
		57 AS Sort,
		"People with social.twitter" AS Statistic,
		(SELECT COUNT(*) FROM people WHERE social_twitter IS NOT NULL) AS Count,
		ROUND(100.0*(SELECT COUNT(*) FROM people WHERE social_twitter IS NOT NULL)/(SELECT COUNT(*) FROM people),2) || "%" AS Percent
	UNION
	SELECT
		58 AS Sort,
		"People with social.instagram" AS Statistic,
		(SELECT COUNT(*) FROM people WHERE social_instagram IS NOT NULL) AS Count,
		ROUND(100.0*(SELECT COUNT(*) FROM people WHERE social_instagram IS NOT NULL)/(SELECT COUNT(*) FROM people),2) || "%" AS Percent
	UNION
	SELECT
		59 AS Sort,
		"People with social.youtube" AS Statistic,
		(SELECT COUNT(*) FROM people WHERE social_youtube IS NOT NULL) AS Count,
		ROUND(100.0*(SELECT COUNT(*) FROM people WHERE social_youtube IS NOT NULL)/(SELECT COUNT(*) FROM people),2) || "%" AS Percent
	UNION
	SELECT
		60 AS Sort,
		"- - - - - - - - - -" AS Statistic,
		"-" AS Count,
		"-" AS Percent
) ORDER BY Sort;
