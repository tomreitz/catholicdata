# Useful SQL queries:

# List countries by region contact_website completeness:
SELECT
	r1.location_country,
	(
		SELECT COUNT(*)
		FROM regions r2
		WHERE r2.location_country=r1.location_country
			AND r2.contact_website!=''
			AND r2.contact_website IS NOT NULL
	)	AS with_website,
	COUNT(*) AS total
FROM regions AS r1
GROUP BY r1.location_country
ORDER BY with_website/total DESC, total DESC
