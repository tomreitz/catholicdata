SELECT json_object(
	'id', id,
	'name', name,
	'type', type,
	'subtype', subtype,
	'location',  json_object(
		'country', location_country,
		'state', location_state,
		'city', location_city,
		'timezone', location_timezone,
		'latitude', location_latitude,
		'longitude', location_longitude,
		'geojson', location_geojson
	),
	'contact', json_object(
		'address', contact_address,
		'website', contact_website,
		'email', contact_email,
		'phone', contact_phone,
		'fax', contact_fax
	),
	'wikipedia', wikipedia,
	'social', json_object(
		'facebook', social_facebook,
		'twitter', social_twitter,
		'instagram', social_instagram,
		'youtube', social_youtube
	),
	'events', (
		SELECT json_group_array( json_object(
			'person', person,
			'organization', organization,
			'place', place,
			'region', region,
			'date', date,
			'type', type,
			'description', description,
			'source', source
		) ) FROM events WHERE events.region=regions.id
	)
) AS json FROM regions
