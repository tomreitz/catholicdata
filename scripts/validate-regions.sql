-- regions errors:
SELECT 'Invalid social_facebook URL' AS error, * FROM regions WHERE social_facebook IS NOT NULL AND social_facebook NOT LIKE 'https://%facebook.com/%'
UNION
SELECT 'Invalid social_twitter URL' AS error, * FROM regions WHERE social_twitter IS NOT NULL AND social_twitter NOT LIKE 'https://twitter.com/%'
UNION
SELECT 'Invalid social_instagram URL' AS error, * FROM regions WHERE social_instagram IS NOT NULL AND social_instagram NOT LIKE 'https://%instagram.com/%'
UNION
SELECT 'Invalid social_youtube URL' AS error, * FROM regions WHERE social_youtube IS NOT NULL AND social_youtube NOT LIKE 'https://%youtube.com/%'
UNION
SELECT 'Invalid wikipedia URL' AS error, * FROM regions WHERE wikipedia IS NOT NULL AND wikipedia NOT LIKE 'https://%wikipedia.org/%'
UNION
SELECT 'Invalid contact_website' AS error, * FROM regions WHERE contact_website IS NOT NULL AND contact_website NOT LIKE 'http%://%';
